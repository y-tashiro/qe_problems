
# Stats of input formulas

lastupdate: Thu, 11 Dec 2014 12:13:10 +0900 (JST), ac8bdad

|                  file|idx|#v|#q|atom|poly|=,<>|<,<=|prenex|abs|ratpoly|ratexp|qdeg|fdeg|stod|
|:----|--:|--:|--:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|
|delinpol              | 1| 4| 1|  2| 2| 0| 2|o| | | | 3| 1|10|
|dorato97              | 1| 4| 3|  5| 5| 0| 5|o| | | | 4| 1|83|
|hong90                | 1| 5| 2| 10|10| 1| 9|o| | | | 2| 2|37|
|hong97                | 1| 2| 2|  3| 3| 0| 3|o| | | |12| 0|367|
|hong97                | 2| 3| 3|  5| 5| 0| 5|o| | | | 4| 0|226|
|hong97                | 3| 3| 3|  8| 8| 0| 8|o| | | | 4| 0|344|
|kah75                 | 1| 5| 2|  4| 4| 1| 3|o| | | | 2| 2|26|
|kinoshita11           | 1| 6| 5| 11|11| 2| 9|o| | | | 2| 1|45|
|kinoshita11           | 2| 6| 5| 11|11| 2| 9|o| | | | 2| 1|34|
|kinoshita11           | 3| 6| 5|  9| 9| 3| 6|o| | | | 2| 1|46|
|kinoshita11           | 4| 6| 5|  9| 9| 3| 6|o| | | | 2| 1|32|
|lasserre01            | 1| 4| 3|  7| 7| 0| 7|o| | | | 4| 1|27|
|makepdq               | 1| 2| 1|  2| 2| 1| 1|o| | | | 2| 2| 6|
|makepdq               | 2| 3| 1|  2| 2| 1| 1|o| | | | 2| 2| 9|
|parrilo06             | 1| 3| 2|  5| 5| 0| 5|o| | | | 4| 1|21|
|portfolio1            | 1| 4| 3|  7| 6| 2| 5|o| | | | 2| 1|22|
|portfolio1            | 2| 4| 3|  5| 5| 1| 4|o| | | | 2| 1|21|
|portfolio1            | 3| 5| 3|  5| 5| 2| 3|o| | | | 2| 1|22|
|total                 |18|75|52|110|109|19|91|18|0|0|0|57|19|1378|

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

