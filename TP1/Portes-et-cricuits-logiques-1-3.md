# TP1 - Portes et cricuits logiques (1/3)

*Lors du cours magistral vous avez abordé les fonctions booléennes tel que la fonction OR, AND ou encore NOT. Lors de ce TP, vous allez manipuler ces fonctions ainsi que leur représentation graphique. Nous allons apprendre à combiner des portes logiques pour en former de nouvelles.*

- [TP1 - Portes et cricuits logiques (1/3)](#tp1---portes-et-cricuits-logiques-13)
  - [Question 1](#question-1)
  - [Question 2](#question-2)
  - [Question 3](#question-3)


## Question 1

Trouvez la table de vérité correspondant à la porte logique suivante : 

![Not Porte logique](./assets/notGate.png)

Cette table devra avoir respecter un format précis :

```text
A | out
-------
0 | ?
1 | ?
```

<details>
<summary>Correction</summary>

```text
A | out
-------
0 | 1
1 | 0
```

</details>

## Question 2

Trouvez la table de vérité correspondant à la porte logique suivante :

![And Porte logique](./assets/andGate.png)

Cette table devra avoir respecter un format précis :

```text
A | B | out
-----------
0 | 0 | ?
0 | 1 | ?
1 | 0 | ?
1 | 1 | ?
```

<details>
<summary>Correction</summary>

```text
A | B | out
-----------
0 | 0 | 0
0 | 1 | 0
1 | 0 | 0
1 | 1 | 1
```

</details>

## Question 3

Trouvez la table de vérité correspondant à la porte logique suivante :

![Or Porte logique](./assets/orGate.png)

Cette table devra avoir respecter un format précis :

```text
A | B | out
-----------
0 | 0 | ?
0 | 1 | ?
1 | 0 | ?
1 | 1 | ?
```

<details>
<summary>Correction</summary>

```text
A | B | out
-----------
0 | 0 | 0
0 | 1 | 1
1 | 0 | 1
1 | 1 | 1
```

</details>
