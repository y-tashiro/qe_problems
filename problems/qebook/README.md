

- http://www.amazon.co.jp/dp/4130614061
- QEの計算アルゴリズムとその応用 - 数式処理による最適化 -
- 穴井宏和, 横山和弘

- p.33 problem 1.3 [tohoku2010-Ri-1-m.mpl](../exam/manual-fof/tohoku2010-Ri-1-m.mpl)
- p.35 problem 1.4 [tohoku2009-Bun2-4-m.mpl](../exam/manual-fof/tohoku2009-Bun2-4-m.mpl)
- p.37 problem 1.5 [kyoto2010-Bun-2-m.mpl](../exam/manual-fof/kyoto2010-Bun-2-m.mpl)
- p.39 problem 1.6 [tsukuba2010-Ri-1-m.mpl](../exam/manual-fof/tsukuba2010-Ri-1-m.mpl)
- p.41 problem 1.7 [hokudai2010-Ri2-1-m.mpl](../exam/manual-fof/hokudai2010-Ri2-1-m.mpl)
- p.43 problem 1.8 [kobe2010-Bun-1-m.mpl](../exam/manual-fof/kobe2010-Bun-1-m.mpl)
- p.45 problem 1.9 [nagoya2011-Ri-3-m.mpl](../exam/manual-fof/nagoya2011-Ri-3-m.mpl)
- p.47 problem 1.10 [kanazawa2011-Ri-1-m.mpl](../exam/manual-fof/kanazawa2011-Ri-1-m.mpl)
- p.53 example 1.12 [redlog.mpl](../../toy/redlog.mpl)

- p.201 (5.8) [dorato97.mpl](../paper/dorato97.mpl)

- p.215 [portfolio1.mpl](../paper/portfolio1.mpl)
- p.217 (6.6) [portfolio1.mpl](../paper/portfolio1.mpl)


# Stats of input formulas

lastupdate: Tue, 02 Dec 2014 09:33:00 +0900 (JST), cb44a70

|                  file|idx|#v|#q|atom|poly|=,<>|<,<=|prenex|abs|ratpoly|ratexp|qdeg|fdeg|stod|
|:----|--:|--:|--:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|
|qeb23                 | 1| 4| 2|  6| 6| 0| 6|o| | | | 1| 2|11|
|qeb28                 | 1| 3| 2|  4| 4| 1| 3|o| | | | 2| 2|12|
|qeb30                 | 1| 2| 2|  1| 1| 1| 0|o| | | | 2| 0| 8|
|qeb30                 | 2| 2| 1|  1| 1| 1| 0|o| | | | 2| 2| 8|
|qeb30                 | 3| 2| 1|  1| 1| 1| 0|o| | | | 2| 2| 8|
|qeb32                 | 1| 3| 2|  2| 2| 2| 0|o| | | | 1| 1| 9|
|qeb53                 | 1| 4| 2|  2| 2| 0| 2|o| | | | 2| 1| 8|
|qeb53                 | 2| 2| 2|  2| 2| 0| 2|o| | | | 2| 0| 6|
|qeb53                 | 3| 5| 3|  7| 7| 3| 4|o| | | | 2| 1|14|
|qeb8                  | 1| 3| 2|  4| 4| 1| 3|o| | | | 2| 1| 8|
|total                 |10|30|19| 30|30|10|20|10|0|0|0|18|12|92|

- `file`: file name
- `idx`: index
- `#v`: number of variables
- `#q`: number of quantified variables
- `atom`: number of atomic formulas
- `poly`: number of distinct polynomials appearing in the formula
- `=,<>`: number of atomic formulas of the form `f=0` or `f<>0`
- `<,<=`: number of atomic formulas of the form `f<0` or `f<=0`
- `prenex`: `o` if the formula is prenex normal form
- `abs`: `o` if the formula contains `abs()`
- `ratpoly`: `o` if the formula contains rational functions
- `ratexp`: `o` if the formula contains rational exponents
- `qdeg`: max degree of quantified variables
- `fdeg`: max degree of free variables
- `stod`: sum of total degree

