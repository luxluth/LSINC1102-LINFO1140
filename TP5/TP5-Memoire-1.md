# TP5 - Mémoire 1

- [TP5 - Mémoire 1](#tp5---mémoire-1)
  - [Question 1a](#question-1a)
  - [Question 1b](#question-2b)
  - [Question 1c](#question-3c)


## Question 1a

Si on représente la mémoire sous la forme d'un tableau comme suis:

| adresse | valeur |
|:-------:|:------:|
|    1    |   251  |
|    2    |   378  |
|    3    |   25   |
|    4    |   32   |
|   ...   |   ...  |

Et que l'on execute le code `assembleur` suivant:

```asm 
@4
D=A
@2
M=D
@1
M=-1
```

Quelle sera la valeur à l'adresse 1 ?

<details>
<summary>Réponse</summary>

`-1`

</details>


## Question 1b

Quelle sera la valeur à l'adresse 2 ?

<details>
<summary>Réponse</summary>

`4`

</details>


## Question 1c

Quelle sera la valeur à l'adresse 4 ?

<details>
<summary>Réponse</summary>

`32`

</details>
