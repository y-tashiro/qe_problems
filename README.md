QE problems
===========

[![Build Status](https://travis-ci.org/hiwane/qe_problems.svg?branch=master)](https://travis-ci.org/hiwane/qe_problems)

# format

- Each file defines a list of lists `[[a1, b1], [a2, b2], ...]:`
where each `ai` is an (extended) first-order formula and
`bi` is a quantifier-free formula which equivalent to `ai`.

## header

- `AUTHOR` (required)
- `DOMAIN` (required)
- `CITATION` (required)

## relational operators

| LaTeX  | Notation |
|:------:|:--------:|
| `=`    | `=`      |
| `\ne`  | `<>`     |
| `<`    | `<`      |
| `\leq` | `<=`     |
| `>`    | `>`      |
| `\geq` | `>=`     |

## functions

![notation](https://raw.githubusercontent.com/hiwane/qe_problems/master/img/notation.png)

- `abs`

# How to use

## SyNRAC/Maple

```maple
F := parse(FileTools[Text][ReadFile]("filename.mpl")):
for fml in F do
  SyNRAC[qe](fml[1]);
end do;
```

## other QE tools

You can convert formulas to another format by using [qeconv](https://github.com/hiwane/qeconv/).

# Contribution

See [CONTRIBUTING-JP.md](https://github.com/hiwane/qe_problems/blob/master/CONTRIBUTING-JP.md) (in Japanese)

# Related Project

- [Remis Search](http://www.redlog.eu/remis/)
- [A repository for CAD Examples](http://opus.bath.ac.uk/31731/)

<!-- vim: set spell: -->
