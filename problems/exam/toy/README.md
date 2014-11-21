
# Stats of input formulas

lastupdated: Fri, 21 Nov 2014 17:46:00 +0900 (JST), 2607bc1

|                  file|idx|#v|#q|atom|poly|=,<>|<,<=|prenex|abs|ratpoly|ratexp|qdeg|fdeg|stod|
|:----|--:|--:|--:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|
|angle_bisector        | 1|11| 8| 18|15|16| 2| | |o|o| 4| 1|133|
|angle_bisector        | 2|11| 8| 18|15|16| 2|o| |o|o| 4| 1|133|

- `file`: file name
- `idx`: index
- `#v`: number of variables
- `#q`: number of quantified variables
- `atom`: number of atomic formulas
- `poly`: number of polynomials appearing in the formula
- `=,<>`: number of atomic formulas whose form are `f=0` or `f<>0`
- `<,<=`: number of atomic formulas whose form are `f<0` or `f<=0`
- `prenex`: `o` if the formula is prenex normal form
- `abs`: `o` if the formula contains `abs()`
- `ratpoly`: `o` if the formula contains rational functions
- `ratexp`: `o` if the formula contains rational exponents
- `qdeg`: max degree of quantified variables
- `fdeg`: max degree of free variables
- `stod`: sum of total degree

