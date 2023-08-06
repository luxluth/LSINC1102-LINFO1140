# QCM - Le Langage HDL - Série 1

*HDL peut etre utilisé pour construire de nombreuses fonctions booléennes en s'appuyant sur les fonctions existantes. Le simulateur étudié dans le cadre de ce cours supporte des fonctions de base dont Nand, And, Or, Not. Nous allons nous entrainer sur des exemples de circuit en HDL.*

- [Le Langage HDL - Série 1](#qcm---le-language-HDl---série-1)
  - [Question 1](#question-1)
  - [Question 2](#question-2)
  - [Question 3](#question-3)
  - [Question 4](#question-4)
  - [Question 5](#question-5)


## Question 1

En utilisant l'inverseur, il est possible de construire un circuit qui retourne en sortie son entrée

- ( ) <pre>
      <code>

      CHIP Rien {
        IN a;
        OUT out3;
        PARTS:
            Not(in=a, out=out1)
            Not(in=out1, out=out2);
            Not(in=out2, out=out3);
      }

    </code>
    </pre>

- ( ) <pre>
      <code>

        CHIP Rien {
            IN a;
            OUT out;
            PARTS:
        }
    </code>
    </pre>

- ( ) <pre>
      <code>

        CHIP Rien {
            IN a;
            OUT out;
            PARTS:
                Not(in=a, out=nota);

        }
    </code>
    </pre>

- (x) 
    <pre>
    <code>

        CHIP Rien {
            IN a;
            OUT out;
            PARTS:
                Not(in=a, out=nota);
                Not(in=nota, out=out);
        }
    </code>
    </pre>
## Question 2

On veut construire un circuit qui implémente la fonction AND avec trois entrées en utilisant des fonctions AND à deux entrées



- (x) /Un circuit AND à trois entrées/
    <pre>
        <code>
        CHIP And3 {
            IN a,b,c;
            // Les trois entrées
            OUT out;
            // La sortie du circuit
            PARTS:
                And(a=a, b=b, out=and1);
                And(a=and1, b=c, out=out);
        
          }
    </code>
    </pre>
    
- ( ) /Un circuit AND à trois entrées/
    <pre>
        <code>
        CHIP And3 {
            IN a,b,c;
            // Les trois entrées
            OUT out;
            // La sortie du circuit
            PARTS:
                And(a=a, b=b, out=and1);
                And(a=and1, b=a, out=out);
        }
        </code>
    </pre>

- ( ) /Un circuit AND à trois entrées/
    <pre>
        <code>
        CHIP And3 {
        IN a,b,c;
        // Les trois entrées
        OUT out;
        // La sortie du circuit
        PARTS:
            And(a=a, b=b, out=and1);
            And(a=and1, b=b, out=out);
        }
        </code>
    </pre>

- ( ) /Un circuit AND à trois entrées/
    <pre>
        <code>
        CHIP And3 {
        IN a,b,c;
        // Les trois entrées
        OUT out;
        // La sortie du circuit
        PARTS:
            And(a=a, b=b, out=and1);
            And(a=b, b=c, out=out);
        }
        </code>
    </pre>







## Question 3

Considérons le circuit suivant: De quelle fonction s'agit il?

<pre>
<code>
CHIP Fonction {
    IN a,b;
    OUT out;
    PARTS:
        Not(in=a, out=nota);
        Not(in=b, out=notb);
        And(a=a, b=notb, out=w1);
        And(a=nota, b=b, out=w2);
        Or(a=w1, b=w2, out=out);

}
</code>
</pre>


- [ ] `La fonction OR`
- [ ] `La fonction NOR`
- [x] `La fonction XOR`
- [ ] `La fonction NAND`

<details>
<summary>Explication</summary>

Calculons `NOT( OR(x,y) )` :
    - `NOT( OR(x,y) ) = NOT(x) AND NOT(y)`
    - `NOT( OR(x,y) ) = AND(NOT(x), NOT(y))`

</details>

## Question 4

Pour les questions suivantes considérons le fichier de test de la fonction Not ci-après:
<pre>
<code>
load Not.hdl,
output-file Not.out,
compare-to Not.cmp,
output-list in%B3.1.3 out%B3.1.3;

set in 0,
eval,
output;

set in 1,
eval,
output;

</code>
</pre>
- [ ] `Ce test est défini dans le fichier Not.out`
- [ ] `Ce test est défini dans le fichier Not.cmp`
- [x] `Ce test est défini dans le fichier Not.tst`
- [ ] `Ce test est défini dans le fichier Not.hdl`


## Question 5

Dans le cadre du simulateur vu en cours, quatre types de fichiers peuvent etre utilisés pour une fonction boolénne. Par exemple pour la fonction NOT, on distingue les fichiers Not.hdl, Not.cmp, Not.tst, Not.out. Que contient le fichier Not.hdl?

- [ ] `Les valeurs de la sortie out du circuit`
- [ ] `Aucune bonne réponse`
- [ ] `La définition des tests à réaliser sur le circuit`
- [x] `La description de la fonction Not`



