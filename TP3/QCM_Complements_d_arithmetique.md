# QCM Compléments d'arithmétique

Les opérations de base sur les nombres sont l'addition et la soustraction. Nous allons nous entrainer sur les opérations de multiplication et de division

## Question 1

On travaille en représentant des naturels sur `8` bits. Considérons l'entier naturel `S=00100101`, alors on peut calculer le produit `Sx2` en faisant :

- [ ] Deux décalages de S vers la droite
- [ ] Deux décalages de S vers la gauche
- [ ] Un décalage de S vers la droite
- [X] Un décalage de S vers la gauche

<details>
<summary>Explication</summary>

Pour calculer le produit de `S` par 2, on doit décaler `S` vers la gauche d'un bit. Cela revient à multiplier `S` par `2` car le bit décalé vers la gauche représente une puissance de 2 plus élevée. Ainsi, le produit `Sx2` serait obtenu par un décalage de `S` vers la gauche, ce qui correspond à l'option `[Un décalage de S vers la gauche]`.

L'option `[Deux décalages de S vers la droite]` est incorrecte, car cela diviserait `S` par `4`, et l'option `[Deux décalages de S vers la gauche]` est également incorrecte car cela multiplierait `S` par `2` deux fois, donc cela équivaut à multiplier `S` par `4`.

En revanche, il convient de noter que pour obtenir `Sx2` en utilisant un seul décalage vers la gauche, cela ne suffit pas, car le résultat serait `01001010`, qui est égal à `42` et non pas `50`. Pour obtenir `Sx2`, il faudrait faire deux décalages vers la gauche pour multiplier par `4`, puis ajouter `S` décalé d'un bit vers la droite pour obtenir le résultat correct `Sx2 = 01001010` qui correspond à `50` en décimal.

</details>

## Question 2

Pour obtenir le quotient de la division du nombre décimal `109` représenté par l’octet `01101101` par `8` , il suffit de décaler la séquence de bits de :

- [X] Trois positions vers la droite
- [ ] Deux positions vers la gauche
- [ ] Trois positions vers la gauche
- [ ] Huit positions vers la droite

<details>
<summary>Explication</summary>

Pour diviser un nombre décimal par `8`, on peut simplement le diviser par `2` trois fois (puisque `8` est `2^3`). De manière similaire, pour diviser un nombre binaire par `2^3 = 8`, il suffit de le décaler vers la droite de `3` positions, car chaque décalage vers la droite de `1` position divise le nombre binaire par `2`. Donc, pour obtenir le quotient de la division du nombre décimal `109` représenté par l'octet `01101101` par `8`, il suffit de décaler la séquence de bits de trois positions vers la droite.

Le résultat de la division sera alors représenté par l'octet `00011010`, qui correspond au nombre décimal `26`.

</details>

## Question 3

Quel est le nombre réel qui correspond à `1001,1001` en notation binaire ?

- [ ] 9,2556
- [ ] 9,5625
- [X] 9,625
- [ ] 9,9

<details>
<summary>Explication</summary>

En notation binaire à virgule fixe, chaque bit à droite de la virgule correspond à une puissance négative de deux, en commençant par 1/2, 1/4, 1/8, etc.

Ainsi, `1001,1001` en binaire correspond à `9 + 1/2 + 1/16` en décimal, soit `9,5625`.

</details>