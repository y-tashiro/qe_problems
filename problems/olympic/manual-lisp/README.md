
# Stats of input formulas

lastupdate: Tue, 25 Nov 2014 09:44:35 +0900 (JST), 141789a

|                  file|idx|#v|#q|atom|poly|=,<>|<,<=|prenex|abs|ratpoly|ratexp|qdeg|fdeg|stod|
|:----|--:|--:|--:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|
|imo2000-2-l           | 1| 3| 3|  5| 5| 1| 4| | |o| | 3| 0|114|
|total                 | 1| 3| 3|  5| 5| 1| 4|0|0|1|0| 3| 0|114|

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

