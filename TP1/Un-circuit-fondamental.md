# TP1 - Un circuit fondamental

- [TP1 - Un circuit fondamental](#tp1---un-circuit-fondamental)
  - [Question](#question)

## Question

Dans cette question, il vous est demandé de construire l'expression booléen correspondant à un circuit qui nous sera très utile dans la suite du cours, il s'agit du multiplexeur. Il permet de selectioner un des inputs (A ou B dans cet exercice) à partir d'un autre input (C ici), voici sa table de vérité :

```text
A | B | C | out
--------------
a | b | 0 | a
a | b | 1 | b
```

<details>
<summary>Correction</summary>

```text
OR(AND(A,NOT(C)),AND(B,C))
```
