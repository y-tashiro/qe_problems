
# Stats of input formulas

lastupdate: Fri, 19 Dec 2014 21:35:21 +0900 (JST), 57e071f

|                  file|idx|#v|#q|atom|poly|=,<>|<,<=|prenex|abs|ratpoly|ratexp|qdeg|fdeg|stod|
|:----|--:|--:|--:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|
|chen14                | 1| 4| 3|  5| 5| 5| 0|o| | | | 2| 1|10|
|chen14                | 2| 4| 3|  3| 3| 3| 0|o| | | | 2| 1|31|
|chen14                | 3| 7| 4|  4| 4| 4| 0|o| | | | 2| 1|24|
|chen14                | 4| 3| 2|  3| 3| 2| 1|o| | | | 6| 2|36|
|delinpol              | 1| 4| 1|  2| 2| 0| 2|o| | | | 3| 1|10|
|dorato97              | 1| 4| 3|  5| 5| 0| 5|o| | | | 4| 1|83|
|hong90                | 1| 5| 2| 10|10| 1| 9|o| | | | 2| 2|37|
|hong97                | 1| 2| 2|  3| 3| 0| 3|o| | | |12| 0|367|
|hong97                | 2| 3| 3|  5| 5| 0| 5|o| | | | 4| 0|226|
|hong97                | 3| 3| 3|  8| 8| 0| 8|o| | | | 4| 0|344|
|kah75                 | 1| 5| 2|  4| 4| 1| 3|o| | | | 2| 2|26|
|lasserre01            | 1| 4| 3|  7| 7| 0| 7|o| | | | 4| 1|27|
|makepdq               | 1| 2| 1|  2| 2| 1| 1|o| | | | 2| 2| 6|
|makepdq               | 2| 3| 1|  2| 2| 1| 1|o| | | | 2| 2| 9|
|parrilo06             | 1| 3| 2|  5| 5| 0| 5|o| | | | 4| 1|21|
|portfolio1            | 1| 4| 3|  7| 6| 2| 5|o| | | | 2| 1|22|
|portfolio1            | 2| 4| 3|  5| 5| 1| 4|o| | | | 2| 1|21|
|portfolio1            | 3| 5| 3|  5| 5| 2| 3|o| | | | 2| 1|22|
|total                 |18|69|44| 85|84|23|62|18|0|0|0|61|20|1322|

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

