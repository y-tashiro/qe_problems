

- http://www.amazon.co.jp/dp/4130614061
- QEの計算アルゴリズムとその応用 - 数式処理による最適化 -
- 穴井宏和, 横山和弘


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

