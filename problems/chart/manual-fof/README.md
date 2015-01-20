
# Stats of input formulas

lastupdate: Tue, 20 Jan 2015 10:02:04 +0900 (JST), 02e0d6a

|                  file|idx|#v|#q|atom|poly|=,<>|<,<=|prenex|abs|ratpoly|ratexp|qdeg|fdeg|stod|
|:----|--:|--:|--:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|
|chart-08CWBE071-m     | 1| 4| 2|  5| 5| 2| 3|o| | | | 1| 1|10|
|chart-08CWBE071-m     | 2| 4| 2|  6| 6| 2| 4|o| | | | 1| 1|10|
|chart-08CY2E172-m     | 1| 3| 2|  3| 3| 2| 1|o| | | | 2| 1|10|
|chart-08CY2E172-m     | 2| 5| 3|  5| 5| 4| 1|o| | | | 2| 1|18|
|total                 | 4|16| 9| 19|19|10| 9|4|0|0|0| 6| 4|48|

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

