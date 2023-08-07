# TP5 - ASM Simple

- [TP5 - ASM Simple](#tp5---asm-simple)
  - [Question](#question)


## Question

L'objectif de cet exercice est d'écrire un programme en langage `assembleur` qui exécute l'équivalent du programme python suivant:

```python 
x = 42
x = x + 1
y = x - y
```

<details>
<summary>Une réponse possible</summary>

```asm 
// Ne pas supprimer ces lignes, il s'agit de l'initialisation des variables dans le bon ordre
@x
@y

@42
D=A

@x
MD=D+1

@y
M=D-M
```

</details>

