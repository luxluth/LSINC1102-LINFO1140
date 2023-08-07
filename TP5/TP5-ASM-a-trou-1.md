# TP5 - ASM a trou 1

Voici un code en ASM qui enregistre dans la variable `a` la valeur `1` si la valeur dans `x` est differente de la valeur dans `y` :

```asm 
@a
M=0  // On set a à 0

@x
D=M  // On met la valeur de x dans le registre D

@y
D=D-M

@EQUAL
D;{1}  // On saute si x est égal à y

@a
M=1  // On set a à 1 si x != y

(EQUAL)
```

- [TP5 - ASM a trou 1](#tp5---asm-a-trou-1)
  - [Question 1](#question-1)
  - [Question 2](#question-2)
  - [Question 3](#question-3)


## Question 1

Quel instruction doit-on mettre à la place de `{1}` pour que ce code fonctionne ?


<details>
<summary>Réponse</summary>

`JEQ` - (Jump if Greater than or Equal to 0). Avec cette instruction, le saut est réalisé uniquement si le résultat du calcul fait par l’ALU est supérieur ou égal à 0.

</details>

## Question 2

On veut maintenant enregistrer la valeur `1` dans `a` si `x > y`. Quel instruction doit-on mettre à la place de `{1}` pour avoir ce resultat ?

<details>
<summary>Réponse</summary>

`JGT` - (Jump if Greater Than 0). Avec cette instruction, le saut est réalisé uniquement si le résultat du calcul fait par l’ALU est strictement positif.

</details>

## Question 3

On veut maintenant enregistrer la valeur `1` dans a si `x < y`. Quel instruction doit-on mettre à la place de `{1}` pour avoir ce resultat ?

<details>
<summary>Réponse</summary>

`JLT` - (Jump if Lower Than 0). Avec cette instruction, le saut est réalisé uniquement si le résultat du calcul fait par l’ALU est strictement inférieur à 0.

</details>

