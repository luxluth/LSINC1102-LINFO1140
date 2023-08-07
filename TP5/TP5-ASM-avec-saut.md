# TP5 - ASM avec saut

- [TP5 - ASM avec saut](#tp5---asm-avec-saut)
  - [Question](#question)


## Question

L'objectif de cet exercice est d'écrire un programme en langage `assembleur` qui exécute l'équivalent du programme python suivant:

```python 
r = b
if a >= b:
   r = a
```

<details>
<summary>Une réponse possible</summary>

```asm 
// Ne pas supprimer ces lignes, il s'agit de l'initialisation des variables dans le bon ordre
@a
@b
@r

@b
D=M

@r
M=D

@a
D=M

@b
D=D-M

@RINA
D;JGE

@END
0;JMP

(RINA)
@a
D=M
@r
M=D

(END)
```

</details>

