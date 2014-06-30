###########################
#-*- coding: utf-8 -*-
# $Id$
###########################

# import {{{
import ply.lex
# }}}


class SyntaxError (Exception):
  def __init__(self, msg, LEXER, src, lineno=None, lexpos=None):
    if lineno is None:
      lineno = LEXER.lex.lineno
    if lexpos is None:
      lexpos = LEXER.lex.lexpos
    self.line = lineno
    self.col = lexpos - LEXER.line_head_pos
    msg += " : %r" % (src)
    Exception.__init__(self, msg)

class Lexer:

  reserved = {
     'And'  : 'AND',
     'Or'   : 'OR',
     'All'  : 'ALL',
     'Ex'   : 'EX',
     'Not'  : 'NOT',
     'Equiv': 'EQUIV',
     'Impl' : 'IMPL',
     'Repl' : 'REPL',
     'true' : 'TRUE',
     'false': 'FALSE',
     'abs'  : 'ABS',
     'area' : 'AREA',
     'volume':'VOLUME',
  }

  # List of token names.   This is always required
  tokens =[
     'NUMBER',
     'ID',
     'PLUS',
     'MINUS',
     'TIMES',
     'DIVIDE',
     'POWER',
     'LBRA',
     'RBRA',
     'GE',
     'LE',
     'NE',
     'EQ',
     'GT',
     'LT',
     'COMMA',
     'COLLON',
     'LPAREN',
     'RPAREN',
  ] + reserved.values()

  def t_ID(self, t):
      r'[a-zA-Z_][a-zA-Z_0-9]*'
      t.type = self.reserved.get(t.value,'ID')    # Check for reserved words
      return t


  # Regular expression rules for simple tokens
  t_PLUS    = r'\+'
  t_MINUS   = r'-'
  t_TIMES   = r'\*'
  t_DIVIDE  = r'/'
  t_POWER   = r'\^'
  t_LBRA    = r'\['
  t_RBRA    = r'\]'
  t_GE      = r'>='
  t_LE      = r'<='
  t_EQ      = r'='
  t_NE      = r'<>'
  t_GT      = r'>'
  t_LT      = r'<'
  t_COMMA   = r','
  t_LPAREN  = r'\('
  t_RPAREN  = r'\)'
  t_COLLON      = r':'

  # A regular expression rule with some action code
  def t_NUMBER(self, t):
    r'\d+'
    try:
      t.value = int(t.value)
    except ValueError:
      print "Line %d: Number %s is too large!" % (t.lineno,t.value)
      t.value = 0
    return t

  # Define a rule so we can track line numbers
  def t_newline(self, t):
    r'\n+'
    t.lexer.lineno += len(t.value)
    self.line_head_pos = t.lexpos + 1

  # A string containing ignored characters (spaces and tabs)
  t_ignore = ' \t'
  t_ignore_comment = r'\#.*'

  # Error handling rule
  def t_error(self, t):
    raise SyntaxError("bad character", self, t.value[0])


  def token(self):
    return self.lex.token()

  def input(self, text):
    self.lex = ply.lex.lex(object=self)
    self.line_head_pos = 0
    self.lex.input(text)

  def test(self, text):
    try:
      self.input(text)
      while True:
        tok = self.token()
        if not tok:
          break
        print tok
    except SyntaxError, ex:
      print ex

if __name__ == '__main__':
  lex = Lexer()
  lex.test("""
  a b c 123 12 0 1
  true false All Ex And Or Not Impl Repl Equiv
  # hogehoge
  comment
  = <> < > <= >= [] a*b^c
  """)



# vim:set et ts=2 sts=2 sw=2 tw=0 fdm=marker:
