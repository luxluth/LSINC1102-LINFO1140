# TP5 - ASM a trou 2

Voici un code en ASM qui enregistre qui calcule la division entière de x par y et mets le résultat dans a :

```asm 
@a
M=0  // On set a à 0

@y
D=M
@FINI
D;{1}  // Si y == 0, la division est impossible, on va à la fin

@x
D=M  // On met la valeur de x dans le registre D

(DIVISION)

    @y
    D=D-M  // On retire une fois y à x

    @FINI
    D;{2} // Si D est plus petit ou égal à zero, on a fini

    @a
    M=M+1   // Sinon on peut retirer y une fois de plus

    @DIVISION
    0;{3}  // On recommence

(FINI)
```

- [TP5 - ASM a trou 2](#tp5---asm-a-trou-2)
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

Quel instruction doit-on mettre à la place de `{2}` pour que ce code fonctionne ?

<details>
<summary>Réponse</summary>

`JLE` - (Jump if Lower than or Equal to 0). Avec cette instruction, le saut est réalisé uniquement si le résultat du calcul fait par l’ALU est inférieur ou égal à 0.

</details>

## Question 3

Quel instruction doit-on mettre à la place de `{3}` pour que ce code fonctionne?

<details>
<summary>Réponse</summary>

`JMP` - Saut inconditionnel

</details>

