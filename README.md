QE problems
===========

[![Build Status](https://travis-ci.org/hiwane/qe_problems.svg)](https://travis-ci.org/hiwane/qe_problems)

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

- `area`
- `volume`
- `abs`

# How to use

## SyNRAC/Maple

```maple
F := parse(FileTools[Text][ReadFile]("filename.mpl")):
for fml in F do
  SyNRAC[qe](fml[1]);
end do;
```

# Contribution

See [CONTRIBUTION-JP.md](https://github.com/hiwane/qe_problems/blob/master/CONTRIBUTING-JP.md) (in Japanese)

<!-- vim: set spell: -->
