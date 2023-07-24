# QCM - Logique Booléenne - Série 1

*Logique booléenne et éléments de base*

- [QCM - Logique Booléenne - Série 1](#qcm---logique-booléenne---série-1)
  - [Question 1](#question-1)
  - [Question 2](#question-2)
  - [Question 3](#question-3)
  - [Question 4](#question-4)
  - [Question 5](#question-5)
  - [Question 6](#question-6)


## Question 1

Il est courant de considérer que...

- [x] le bit `0` représente la valeur Faux et le bit `1` la valeur Vrai
- [ ] le bit `0` représente la valeur Nulle et le bit `1` la valeur Vrai
- [ ] le bit `0` représente la valeur Faux et le bit `1` la valeur Non Nulle
- [ ] le bit `0` représente la valeur Faux et le bit `1` la valeur Non Nulle

<details>
<summary>Explication</summary>

Le bit `0` représente la valeur Faux et le bit `1` la valeur Vrai.
</details>

## Question 2

Une opération booléenne est une fonction qui prend...

- [x] en entrée `0`, `1` ou plusieurs bits et retourne un résultat
- [ ] en entrée `1` bit et retourne un résultat
- [ ] en entrée `0`, `1` ou plusieurs bits et retourne plusieurs résultats
- [ ] en entrée `1` bit et retourne plusieurs résultats

## Question 3

La fonction `AND(x, y)`...

- [ ] retourne la valeur `1` lorsque ses deux entrées ont la valeur `0`
- [ ] retourne toujours la valeur `1` lorsqu’une de ses entrées a la valeur `1`
- [ ] retourne la valeur `0` uniquement lorsque ses deux entrées ont la valeur `0`
- [x] retourne la valeur `1` uniquement lorsque ses deux entrées ont la valeur `1`

<details>
<summary>Explication</summary>

| A | B | AND |
|:-:|:-:|:---:|
| 0 | 0 |  0  |
| 0 | 1 |  0  |
| 1 | 0 |  0  |
| 1 | 1 |  1  |

</details>

## Question 4

La fonction `OR(x, y)`...

- [x] retourne la valeur 0 uniquement lorsque ses deux entrées ont la valeur 0
- [ ] retourne la valeur 1 uniquement lorsque ses deux entrées ont la valeur 1
- [ ] retourne la valeur 1 lorsque ses deux entrées ont la valeur 0
- [ ] retourne toujours la valeur 0 lorsqu’une de ses entrées a la valeur 0

<details>
<summary>Explication</summary>

| A | B | OR |
|:-:|:-:|:--:|
| 0 | 0 | 0  |
| 0 | 1 | 1  |
| 1 | 0 | 1  |
| 1 | 1 | 1  |

</details>

## Question 5

La fonction `NAND(x, y)` équivaut à...

- [x] `NOT( AND(x, y) )`
- [ ] `AND( NOT(x), NOT(y) )`
- [ ] `OR( AND(x, y), x )`

<details>
<summary>Explication</summary>

* `NAND(x, y)` retourne la valeur `1` uniquement lorsque ses deux entrées ont la valeur `0`
* `AND(x, y)` retourne la valeur `1` uniquement lorsque ses deux entrées ont la valeur `1`
* `NOT(x)` retourne la valeur `1` uniquement lorsque son entrée a la valeur `0`

| A | B | AND | NOT |
|:-:|:-:|:---:| :-: |
| 0 | 0 |  0  |  1  |
| 0 | 1 |  0  |  1  |
| 1 | 0 |  0  |  1  |
| 1 | 1 |  1  |  0  |

| A | B | NAND |
|:-:|:-:|:----:|
| 0 | 0 |   1  |
| 0 | 1 |   1  |
| 1 | 0 |   1  |
| 1 | 1 |   0  |

</details>

## Question 6

La fonction `NOR(x, y)` équivaut à...

- [ ] `AND( OR(x,y), NOT(x) )`
- [ ] `OR( NOT(x), NOT(y) )`
- [x] `NOT( OR(x, y) )`

<details>
<summary>Explication</summary>

* `NOR(x, y)` retourne la valeur `1` uniquement lorsque ses deux entrées ont la valeur `0`
* `OR(x, y)` retourne la valeur `1` lorsque ses deux entrées ont la valeur `1`

| A | B | OR | NOT |
|:-:|:-:|:--:| :-: |
| 0 | 0 | 0  |  1  |
| 0 | 1 | 1  |  0  |
| 1 | 0 | 1  |  0  |
| 1 | 1 | 1  |  0  |

| A | B | NOR |
|:-:|:-:|:---:|
| 0 | 0 |  1  |
| 0 | 1 |  0  |
| 1 | 0 |  0  |
| 1 | 1 |  0  |

</details>
