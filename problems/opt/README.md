optimization problems

# Stats of input formulas

lastupdate: Tue, 16 Dec 2014 09:15:37 +0900 (JST), c2349f1

|                  file|idx|#v|#q|atom|poly|=,<>|<,<=|prenex|abs|ratpoly|ratexp|qdeg|fdeg|stod|
|:----|--:|--:|--:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|
|fujisawa09            | 1| 4| 3| 10|10| 1| 9|o| | | | 2| 1|26|
|kinoshita11           | 1| 6| 5| 11|11| 2| 9|o| | | | 2| 1|45|
|kinoshita11           | 2| 6| 5| 11|11| 2| 9|o| | | | 2| 1|34|
|kinoshita11           | 3| 6| 5|  9| 9| 3| 6|o| | | | 2| 1|46|
|kinoshita11           | 4| 6| 5|  9| 9| 3| 6|o| | | | 2| 1|32|
|lampinen00            | 1| 4| 2|  6| 6| 2| 4|o| | | | 2| 1|12|
|lampinen00            | 2| 5| 2|  6| 6| 2| 4|o|o| |o| 2| 1|14|
|lampinen00            | 3| 3| 1| 10| 8| 4| 6|o| | | | 2| 1|13|
|total                 | 8|40|28| 72|70|19|53|8|1|0|1|16| 8|222|

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

