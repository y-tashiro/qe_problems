###########################
#-*- coding: utf-8 -*-
# {{{
"""
ファイルの正当性チェック
"""
# }}}
###########################
#import {{{
import getopt
import sys
import os
import re
import ply.yacc
from Lexer import SyntaxError
from Parser import Parser
#}}}

def errmes(file, lno, col, msg):
  if lno > 0:
    sys.stderr.write(file + ':' + str(lno) + ':' + str(col) + ':Error: ' + msg + '\n')
  else:
    sys.stderr.write(file + ':0:0:Error: ' + msg + '\n')


def parse_mpl(file):
  p = Parser()
  try:
    p.parsefile(file)
    return 0
  except SyntaxError as e:
    errmes(file, e.line, e.col, str(e))
  return 1

  # except:
  #   print sys.exc_info()
  #   ret = 1

def usage():
  sys.stderr.write("Usage: check.py file1 [file2 ...]\n")


def gendict():
  dict = {}
  dict['AUTHOR'] = {'re': re.compile('^# AUTHOR\s*:\s+.*<[\w.-]+@[\w.-]+>$')}
  dict['DOMAIN'] = {'re': re.compile('^# DOMAIN\s*:\s+.*(reals|complex|integers|reals,area)$')}
  dict['CITATION'] = {'re': re.compile('^# CITATION\s*:\s+.*[^\s]$')}

  assert not dict['DOMAIN']['re'].match('# DOMAIN: real')
  assert dict['DOMAIN']['re'].match('# DOMAIN: reals')
  assert dict['DOMAIN']['re'].match('# DOMAIN: complex')
  assert dict['DOMAIN']['re'].match('# DOMAIN: integers')
  assert dict['DOMAIN']['re'].match('# DOMAIN  : integers')
  assert not dict['DOMAIN']['re'].match('# DOMAIN: integers ')
  assert not dict['DOMAIN']['re'].match('# DOMAIN: inegers')

  assert dict['AUTHOR']['re'].match('# AUTHOR: <iwane@jp.fujitsu.com>')
  assert not dict['AUTHOR']['re'].match('# AUTHOR: iwane@jp.fujitsu.com>')
  assert not dict['AUTHOR']['re'].match('# AUTHOR: ')

  assert not dict['CITATION']['re'].match('# CITATION: ')
  return dict


def check(file, dict, rec):
  ret = 0

  if os.path.isdir(file):
    for f in os.listdir(file):
      ret |= check(os.path.join(file, f), dict, rec)
    return ret

  if not os.path.isfile(file):
    errmes(file, 0, 1, "file not found")
    return 1


  for key in dict.keys():
    dict[key]['lno'] = 0
  lno = 0

  for line in open(file, 'r'):
    lno += 1
    if len(line) == 0 or line[0] != '#':
      break

    for key in dict.keys():
      d = dict[key]
      if d['re'].match(line):
        if d['lno']:
          errmes(file, lno, 1, key + ' is duplicated (line=' + str(d['lno']) + ')')
          ret = 1
        d['lno'] = lno

  for key in dict.keys():
    d = dict[key]
    if d['lno'] == 0:
      errmes(file, 0, 0, key + ' is not defined')
      ret = 1

  ret = ret | parse_mpl(file)
  return ret


def main():
  try:
    opts, args = getopt.getopt(sys.argv[1:], "hr", ["help", "recursive"])
  except getopt.GetoptError:
    # ヘルプメッセージを出力して終了
    usage()
    sys.exit(2)
  recursive = False
  for o, a in opts:
    if o in ("-h", "--help"):
      usage()
      sys.exit()
    elif o in ("-r", "--recursive"):
      recursive = True

  if len(sys.argv) <= 0:
    usage()
    quit()

  ret = 0
  dict = gendict()
  for f in args:
    ret |= check(f, dict, recursive)
  sys.exit(ret)



if __name__ == "__main__":
    main()



# vim:set et ts=2 sts=2 sw=2 tw=0:
