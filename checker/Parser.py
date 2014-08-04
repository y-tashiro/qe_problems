###########################
#-*- coding: utf-8 -*-
# $Id$
###########################

# import {{{
import sys
import ply.yacc
from Lexer import Lexer, SyntaxError
# }}}

class Parser:
  tokens = Lexer.tokens

  def __init__(self, **yacc_args):
    self.lexer = None
    self.yacc_args = yacc_args

  def parse(self, source_text):
    if self.lexer is None:
      self.lexer = Lexer()
      self.parser = ply.yacc.yacc(module=self, debug=0, **self.yacc_args)
    return self.parser.parse(source_text, lexer=self.lexer)

  def parsefile(self, file):
    f = open(file, 'r')
    try:
      r = f.read(5000000)
      return self.parse(r)
    finally:
      f.close()

  def p_error(self, t):
    raise SyntaxError("unexpected token",
              self.lexer, t.value, t.lineno, t.lexpos)


  def p_listlist(self, p):
    '''
    listlist : LBRA pairs RBRA COLLON
    '''
    p[0] = p[2]

  def p_pairs(self, p):
    '''
    pairs : pair
          | pairs COMMA pair
    pair : LBRA fof COMMA freefml RBRA
    '''
    if len(p) == 2:
      # pir
      p[0] = p[1]
    elif len(p) == 4:
      # pairs . pair
      p[0] = p[3]
    else:
      # pair
      if len(p[4].difference(p[2])) > 0:
        raise SyntaxError("invalid output formula",
              self.lexer, p[2], p.lineno(1), p.lexpos(1))

  def p_fof(self, p):
    '''
    fof : NOT LPAREN fof RPAREN
        | AND LPAREN fofs RPAREN
        | OR LPAREN fofs RPAREN
        | REPL LPAREN fof COMMA fof RPAREN
        | IMPL LPAREN fof COMMA fof RPAREN
        | EQUIV LPAREN fof COMMA fof RPAREN
        | atom
        | ALL LPAREN listvar COMMA fof RPAREN
        | EX  LPAREN listvar COMMA fof RPAREN
        | LPAREN fof RPAREN
    '''
    if len(p) == 2:
      # atom
      p[0] = p[1]
    elif len(p) == 4:
      # ( fof )
      p[0] = p[2]
    elif len(p) == 5:
      # Not, And, Or
      p[0] = p[3]
    elif len(p) == 7:
      if p[1] == 'All' or p[1] == 'Ex':
        if len(p[3].difference(p[5])) > 0:
          raise SyntaxError("unknown variable",
                self.lexer, p[3], p.lineno(1), p.lexpos(1))

        p[0] = p[5].difference(p[3])
      else:
        p[0] = p[3].union(p[5])
    else:
      print "hey", p[1]

  def p_listvar(self, p):
    '''
    listvar : LBRA vars RBRA
    vars : id
         | vars COMMA id
    '''
    if len(p) == 2:
      # ID
      p[0] = p[1]
    elif p[1] == '[':
      # listvar
      p[0] = p[2]
    else:
      # vars COMMA ID
      p[0] = p[1].union(p[3])

  def p_fofs(self, p):
    '''
    fofs : fof
         | fofs COMMA fof
    '''
    if len(p) == 2:
      p[0] = p[1]
    else:
      p[0] = p[1].union(p[3])

  def p_freefmls(self, p):
    '''
    freefmls : freefml
             | freefmls COMMA freefml
    '''
    if len(p) == 2:
      p[0] = p[1]
    else:
      p[0] = p[1].union(p[3])

  def p_freefml(self, p):
    '''
    freefml : NOT LPAREN freefml RPAREN
            | AND LPAREN freefmls RPAREN
            | OR LPAREN freefmls RPAREN
            | REPL LPAREN freefml COMMA freefml RPAREN
            | IMPL LPAREN freefml COMMA freefml RPAREN
            | EQUIV LPAREN freefml COMMA freefml RPAREN
            | atom
    '''
    if len(p) == 2:
      # atom
      p[0] = p[1]
    elif len(p) == 5:
      # Not, And, Or
      p[0] = p[3]
    elif len(p) == 7:
      p[0] = p[3].union(p[5])
    else:
      print "hey", p[1]

  def p_atom(self, p):
    '''
    atom : TRUE
         | FALSE
         | poly EQ poly
         | poly NE poly
         | poly GT poly
         | poly GE poly
         | poly LT poly
         | poly LE poly
    '''
    if len(p) == 2:
      p[0] = set([])
    elif len(p) == 4:
      # poly op poly
      p[0] = p[1].union(p[3])
    elif p[1] == 'abs':
      p[0] = p[3]
    else:
      assert False

  precedence = (
      ('left', 'PLUS', 'MINUS'),
      ('left', 'TIMES', 'DIVIDE'),
      ('left', 'POWER'),
      ('right', 'UMINUS', 'UPLUS'),  # Unary minus operator
  )

  def p_listpoly(self, p):
    '''
    listpoly : LBRA polys RBRA
    polys : poly
          | polys COMMA poly
    '''
    if p[1] == '[':
      p[0] = p[2]
    elif len(p) == 2:
      p[0] = p[1]
    else:
      p[0] = p[1].union(p[3])

  def p_poly(self, p):
    '''
    poly : number
         | id
         | poly PLUS poly
         | poly MINUS poly
         | poly TIMES poly
         | poly DIVIDE poly
         | poly POWER rational
         | LPAREN poly RPAREN
         | MINUS poly %prec UMINUS
         | PLUS poly %prec UPLUS
         | ABS LPAREN poly RPAREN
         | AREA LPAREN listpoly COMMA freefml COMMA listvar RPAREN
         | AREA LPAREN freefml COMMA freefml COMMA listvar RPAREN
         | VOLUME LPAREN listpoly COMMA freefml COMMA listvar RPAREN
         | VOLUME LPAREN freefml COMMA freefml COMMA listvar RPAREN
    '''
    if p[1] == '(' or len(p) == 3:
      p[0] = p[2]
    elif len(p) == 4:
      # poly op poly
      p[0] = p[1].union(p[3])
    elif len(p) == 5:
      # abs / ln
      p[0] = p[3]
    elif p[1] == 'area' or p[1] == 'volume':
      # area/volume
      if len(p[3].difference(p[7])) > 0:
        raise SyntaxError("not enough variable",
              self.lexer, p[1], p.lineno(1), p.lexpos(1))
      if len(p[7].difference(p[3])) > 0:
        raise SyntaxError("unknown variable",
              self.lexer, p[1], p.lineno(1), p.lexpos(1))
      if len(p[5].difference(p[3])) > 0:
        raise SyntaxError("unknown variable",
              self.lexer, p[1], p.lineno(1), p.lexpos(1))
      p[0] = p[7]
    else:
      p[0] = p[1]

  def p_rational(self, p):
    '''
    rational : number
             | rational PLUS rational
             | rational MINUS rational
             | rational DIVIDE rational
             | rational TIMES rational
             | LPAREN rational RPAREN
    '''
    if len(p) == 2:
      p[0] = p[1]
    elif p[1] == '(':
      p[0] = p[2]
    else:
      p[0] = p[1].union(p[3])


  def p_number(self, p):
    '''
    number : NUMBER
    '''
    p[0] = set([])

  def p_id(self, p):
    '''
    id : ID
    '''
    p[0] = set([p[1]])

if __name__ == '__main__':
  import pprint
  #[[ All([x], a*x^2+b*x+c > 0), -b^2-4*a*c < 0 ]]
  source_text = """
###################################
# FILE     : qeb8.mpl
# AUTHOR   : H. Iwane <iwane@jp.fujitsu.com>
# DOMAIN   : reals
# CITATION : qebook page. 8
###################################
[[Ex([x1,x2], And(y-(x1+x2)=0, x2 >= 0, x1+1 >= 0, x2-x1^2 >= 0)),
  y >= -1/4]]:

  """
  syntax_tree = Parser().parse(source_text)
  print "gogo"
  pprint.pprint(syntax_tree)
  print "done"

# vim:set et ts=2 sts=2 sw=2 tw=0 fdm=marker:
