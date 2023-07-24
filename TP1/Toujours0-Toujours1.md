# TP1 - Toujours0, Toujours1

*Dans cet exercice, vous allez construire deux portes logiques qui seront utiles dans la suite du cours : toujours0 et toujours1.*

- [TP1 - Toujours0, Toujours1](#tp1---toujours0-toujours1)
  - [Question 1: Toujours 1](#question-1-toujours-1)
  - [Question 2: Toujours 0](#question-2-toujours-0)


## Question 1: Toujours 1

Dans cette question, il vous est demandé de composer la fonction toujours1 vue au cours à l'aide des portes logiques suivante : `AND`, `OR`, `NOT`.

Pour rappel voici la table de vérité de cette fonction:

```text
A | out
-------
0 | 1
1 | 1
```

<details>
<summary>Hint</summary>

Vous pouvez utiliser la fonction `NOT` pour inverser la valeur d'un bit.

</details>

<details>
<summary>Correction</summary>

```text
OR(A, NOT(A))
```

</details>

## Question 2: Toujours 0

Même exercice pour la fonction toujours0 qui renvoie toujours 0 peut importe l'input, la table de vérité est la suivante :

```text
A | out
-------
0 | 0
1 | 0
```

<details>
<summary>Correction</summary>

```text
AND(A, NOT(A))
```

</details>
