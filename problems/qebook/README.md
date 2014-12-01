

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



# Stats of input formulas

lastupdate: Tue, 25 Nov 2014 03:17:41 +0900 (JST), 95c8ba4

|                  file|idx|#v|#q|atom|poly|=,<>|<,<=|prenex|abs|ratpoly|ratexp|qdeg|fdeg|stod|
|:----|--:|--:|--:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|
|qeb23                 | 1| 4| 2|  6| 6| 0| 6|o| | | | 1| 2|11|
|qeb28                 | 1| 3| 2|  4| 4| 1| 3|o| | | | 2| 2|12|
|qeb30                 | 1| 2| 2|  1| 1| 1| 0|o| | | | 2| 0| 8|
|qeb30                 | 2| 2| 1|  1| 1| 1| 0|o| | | | 2| 2| 8|
|qeb30                 | 3| 2| 1|  1| 1| 1| 0|o| | | | 2| 2| 8|
|qeb32                 | 1| 3| 2|  2| 2| 2| 0|o| | | | 1| 1| 9|
|qeb8                  | 1| 3| 2|  4| 4| 1| 3|o| | | | 2| 1| 8|
|total                 | 7|19|12| 19|19| 7|12|7|0|0|0|12|10|64|

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

