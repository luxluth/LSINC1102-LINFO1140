# QCM - Logique Booléenne - Série 2

*Quelques équivalences*

- [QCM - Logique Booléenne - Série 2](#qcm---logique-booléenne---série-2)
- [Question 1](#question-1)
- [Question 2](#question-2)
- [Question 3](#question-3)
- [Question 4](#question-4)
- [Question 5](#question-5)
- [Question 6](#question-6)

# Question 1

`AND(1, x)` équivaut à...

- [ ] `0`
- [x] `x`
- [ ] aucune bonne réponse
- [ ] `1`

<details>
<summary>Explication</summary>

| A | X | AND |
|:-:|:-:|:---:|
| 1 | 0 |  0  |
| 1 | 1 |  1  |
| 1 | 0 |  0  |
| 1 | 1 |  1  |

</details>

# Question 2

`AND(0, x)` équivaut à...

- [ ] aucune bonne réponse
- [ ] `1`
- [x] `0`
- [ ] `x`

<details>
<summary>Explication</summary>

| A | X | AND |
|:-:|:-:|:---:|
| 0 | 0 |  0  |
| 0 | 1 |  0  |
| 0 | 0 |  0  |
| 0 | 1 |  0  |

</details>

# Question 3

`OR(1, x)` équivaut à...

- [x] `1`
- [ ] `x`
- [ ] aucune bonne réponse
- [ ] `0`

<details>
<summary>Explication</summary>

| A | X | OR |
|:-:|:-:|:---:|
| 1 | 0 |  1  |
| 1 | 1 |  1  |
| 1 | 0 |  1  |
| 1 | 1 |  1  |

</details>

# Question 4

`OR(0, x)` équivaut à...

- [x] `x`
- [ ] `0`
- [ ] aucune bonne réponse
- [ ] `1`

<details>
<summary>Explication</summary>

| A | X | OR |
|:-:|:-:|:---:|
| 0 | 0 |  0  |
| 0 | 1 |  1  |
| 0 | 0 |  0  |
| 0 | 1 |  1  |

</details>

# Question 5

`OR(x, x)` équivaut à...

- [ ] `1`
- [ ] `0`
- [x] `x`
- [ ] aucune bonne réponse

<details>
<summary>Explication</summary>

`OR(0,0)=0` et `OR(1,1)=1`

</details>

# Question 6

`AND( NOT(x), x)` équivaut à...

- [ ] `1`
- [ ] `x`
- [ ] aucune bonne réponse
- [x] `0`

<details>
<summary>Explication</summary>

| A | NOT | AND |
|:-:|:---:|:---:|
| 0 |  1  |  0  |
| 1 |  0  |  0  |

`AND( NOT(0), 0)= 0` et `AND( NOT(1), 1)= 0`

</details>
