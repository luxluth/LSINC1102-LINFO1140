# QCM - Logique Booléenne - Série 3

*Commutativité-Associativité-Lois de De Morgan*

- [QCM - Logique Booléenne - Série 3](#qcm---logique-booléenne---série-3)
  - [Question 1](#question-1)
  - [Question 2](#question-2)
  - [Question 3](#question-3)
  - [Question 4](#question-4)
  - [Question 5](#question-5)
  - [Question 6](#question-6)


## Question 1

Les opérations `AND` et `OR` sont...

- [ ] ni associatives ni commutatives
- [ ] associatives mais non commutatives
- [x] commutatives et associatives
- [ ] commutatives mais non associatives

## Question 2

`AND(x, OR(y, z))` équivaut à...

- [ ] `AND(OR(x, y), AND(x, z))`
- [x] `OR(AND(x, y), AND(x, z))`
- [ ] `OR(AND(x, y), OR(x, z))`
- [ ] `AND(AND(x, y), OR(x, z))`

<details>
<summary>Explication</summary>

| X | Y | Z | OR | AND | AND |
|:-:|:-:|:-:|:--:|:---:|:---:|
| 0 | 0 | 0 |  0 |  0  |  0  |
| 0 | 0 | 1 |  1 |  0  |  0  |
| 0 | 1 | 0 |  1 |  0  |  0  |
| 0 | 1 | 1 |  1 |  0  |  0  |
| 1 | 0 | 0 |  1 |  0  |  0  |
| 1 | 0 | 1 |  1 |  1  |  1  |
| 1 | 1 | 0 |  1 |  1  |  1  |
| 1 | 1 | 1 |  1 |  1  |  1  |

</details>

## Question 3

Selon les *lois de De Morgan*, `NOT( OR(x,y) )` équivaut à...

- [x] `AND(NOT(x), NOT(y))`
- [ ] `OR(NOT(x), NOT(y))`
- [ ] `NOT( AND(NOT(x), NOT(y)) )`
- [ ] `NOT( OR(NOT(x), NOT(y)) )`

<details>
<summary>Explication</summary>

Calculons `NOT( OR(x,y) )` :
    - `NOT( OR(x,y) ) = NOT(x) AND NOT(y)`
    - `NOT( OR(x,y) ) = AND(NOT(x), NOT(y))`

</details>

## Question 4

Selon les lois de De Morgan, `NOT( AND(x,y) )` équivaut à...

- [ ] NOT( AND(NOT(x), NOT(y)) )
- [ ] AND(NOT(x), NOT(y))
- [x] OR(NOT(x), NOT(y))
- [ ] NOT( OR(NOT(x), NOT(y)) )

<details>
<summary>Explication</summary>

Calculons `NOT( AND(x,y) )` :
    - `NOT( AND(x,y) ) = NOT(x) OR NOT(y)`
    - `NOT( AND(x,y) ) = OR(NOT(x), NOT(y))`

</details>

## Question 5

`OR(x,y,z)` équivaut à...

- [x] OR(y, OR(x,z))
- [ ] OR(OR(x,y), OR(x,z))
- [ ] OR(OR(y,z), OR(y,x))

<details>
<summary>Explication</summary>

| X | Y | Z | OR(x,z) | OR(y, OR(x,z)) |
|:-:|:-:|:-:|:-------:|:--------------:|
| 0 | 0 | 0 |    0    |        0       |
| 0 | 0 | 1 |    1    |        1       |
| 0 | 1 | 0 |    0    |        1       |
| 0 | 1 | 1 |    1    |        1       |
| 1 | 0 | 0 |    1    |        1       |
| 1 | 0 | 1 |    1    |        1       |
| 1 | 1 | 0 |    1    |        1       |
| 1 | 1 | 1 |    1    |        1       |

Si un seul des bits est à 1, alors le résultat est 1.

</details>

## Question 6

`OR(x, AND(NOT(x), y))` équivaut à...

- [ ] NOR(x,y)
- [x] OR(x,y)
- [ ] XOR(x,y)
- [ ] NAND(x,y)

<details>
<summary>Explication</summary>

| X | Y | NOT(X) | AND(NOT(X), Y) | OR(X, AND(NOT(X), Y)) | OR(X,Y) |
|:-:|:-:|:------:|:--------------:|:---------------------:|:-------:|
| 0 | 0 |   1    |        0       |           0           |    0    |
| 0 | 1 |   1    |        1       |           1           |    1    |
| 1 | 0 |   0    |        0       |           1           |    1    |
| 1 | 1 |   0    |        0       |           1           |    1    |

</details>
