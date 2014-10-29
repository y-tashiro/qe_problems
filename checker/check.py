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
  dict['DOMAIN'] = {'re': re.compile('^# DOMAIN\s*:\s+.*(reals|complex|integers)$')}
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


re_seol = re.compile('.*\s\n$')
dic_fname_reserved = {
  'README.md': True,
  'parsetab.py': True,
  'parser.out': True,
}

n_counter = 0
def check(file, dict, filedic, rec):
  ret = 0

  if os.path.isdir(file):

    bpath = os.path.basename(file)

    for f in os.listdir(file):
      file2 = os.path.join(file, f)
      if os.path.isdir(file2):
        if rec:
          ret |= check(file2, dict, filedic, rec)
      else:
        if f.endswith(".mpl"):
          if bpath == "semi-auto":
            if not f.endswith("-s.mpl"):
              errmes(file2, 0, 1, "invalid filename. -s.mpl")
              ret = 1
          elif bpath == "manual-fof":
            if not f.endswith("-m.mpl"):
              errmes(file2, 0, 1, "invalid filename. -m.mpl")
              ret = 1
          elif bpath == "manual-lisp":
            if not f.endswith("-l.mpl"):
              errmes(file2, 0, 1, "invalid filename. -l.mpl")
              ret = 1
          ret |= check(file2, dict, filedic, rec)
        elif not f in dic_fname_reserved:
          ret = 1
          errmes(file2, 0, 1, "invalid filename")


    return ret

  if not os.path.isfile(file):
    errmes(file, 0, 1, "file not found")
    return 1

  fbase = os.path.basename(file)
  if fbase in filedic:
    errmes(file, 0, 1, "filename is already used.")
    return 1

  filedic[fbase] = True

  for key in dict.keys():
    dict[key]['lno'] = 0
  lno = 0

  sys.stderr.write(file + '\n')
  #################################
  # HEADER
  #################################
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

  #################################
  # whitespce at EOL
  #################################
  lno = 0
  for line in open(file, 'r'):
    lno += 1
    if re_seol.match(line):
      errmes(file, lno, len(line)-1, 'whitespace is found at the end of line')
      ret = 1
  if line[-1] != '\n':
    errmes(file, lno, len(line)-1, 'text file must end with an LF')
    ret = 1


  #################################
  # BODY
  #################################
  ret = ret | parse_mpl(file)
  global n_counter
  n_counter = n_counter + 1
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

  filename = {}
  for f in args:
    ret |= check(f, dict, filename, recursive)
  print "#=", n_counter, "ret=", ret
  sys.exit(ret)


if __name__ == "__main__":
    main()
    print "end"

# vim:set et ts=2 sts=2 sw=2 tw=0:
