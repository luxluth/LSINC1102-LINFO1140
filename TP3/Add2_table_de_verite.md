# TP3 - Add2 table de verité

## Question

Dans cet exercice, il vous est demandé de donnée la table de vérité de la porte logique `Add2` qui permet d'additionner 2 nombres de 2 bits. Cette porte retourne les 2 derniers bits du résultat de l'addition : `out0` et `out1`.

Complétez les entrées suivantes de la table de vérité de `Add2`

```cmp
A1 | A2 | B1 | B2| out1 | out2
------------------------------
 0 | 0  | 0  | 0 |  ?   |  ?
 0 | 0  | 1  | 1 |  ?   |  ?
 0 | 0  | 1  | 0 |  ?   |  ?
 1 | 1  | 1  | 1 |  ?   |  ?
 1 | 0  | 0  | 1 |  ?   |  ?
 0 | 1  | 1  | 0 |  ?   |  ?
 0 | 1  | 1  | 1 |  ?   |  ?
```
<details>
<summary>Réponse</summary>

```cmp
A1 | A2 | B1 | B2| out1 | out2
-------------------------------
 0 | 0  | 0  | 0 |  0   |  0
 0 | 0  | 1  | 1 |  1   |  1
 0 | 0  | 1  | 0 |  1   |  0
 1 | 1  | 1  | 1 |  1   |  0
 1 | 0  | 0  | 1 |  1   |  1
 0 | 1  | 1  | 0 |  1   |  1
 0 | 1  | 1  | 1 |  0   |  0
```
<details>
<summary>Hint 💡</summary>

C'est une simple addition deux à deux et n'écrit que les deux 
derniers bits.

Par exemple à la dernière line `01` `+` `11` `=` `100` ~ `1 + 3 = 4` mais on ne garde que les deux dernières bits donc la réponse est `00`

</details>
</details>
