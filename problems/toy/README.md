
# Stats of input formulas

lastupdate: Tue, 25 Nov 2014 03:17:41 +0900 (JST), 95c8ba4

|                  file|idx|#v|#q|atom|poly|=,<>|<,<=|prenex|abs|ratpoly|ratexp|qdeg|fdeg|stod|
|:----|--:|--:|--:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|
|cubic                 | 1| 4| 1|  2| 2| 1| 1|o| | | | 3| 1|10|
|cubic                 | 2| 4| 1|  2| 2| 0| 2|o| | | | 3| 1|10|
|cubic                 | 3| 4| 1|  2| 2| 1| 1|o| | | | 3| 1|10|
|cubic                 | 4| 4| 1|  2| 2| 0| 2|o| | | | 3| 1|10|
|quad                  | 1| 3| 1|  1| 1| 0| 1|o| | | | 2| 1| 5|
|quad                  | 2| 3| 1|  1| 1| 0| 1|o| | | | 2| 1| 5|
|quad                  | 3| 4| 1|  1| 1| 1| 0|o| | | | 2| 1| 6|
|quad                  | 4| 4| 1|  2| 2| 1| 1|o| | | | 2| 1| 7|
|quad                  | 5| 4| 1|  2| 2| 1| 1|o| | | | 2| 1| 7|
|quartic               | 1| 4| 1|  1| 1| 0| 1|o| | | | 4| 1|10|
|quartic               | 2| 4| 1|  1| 1| 0| 1|o| | | | 4| 1|10|
|redlog                | 1| 4| 2|  2| 2| 0| 2|o| | | | 2| 1|10|
|total                 |12|46|13| 19|19| 5|14|12|0|0|0|32|12|100|

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

