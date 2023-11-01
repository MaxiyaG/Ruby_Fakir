# Jeu du Fakir en Ruby

Ce projet implémente le jeu du Fakir en Ruby pour s'exercer avec ce langage.

# Règles du jeu
Le principe du jeu est le suivant :

L'ordinateur choisit un nombre entier aléatoire entre 0 et 100
et le joueur doit deviner ce nombre en un maximum de 5 essais (configurable dans la variable "nb_tour").
A chaque essai, l'ordinateur indique si le nombre est plus grand ou plus petit que celui choisi.
Le joueur gagne s'il trouve le nombre choisi par l'ordinateur avant qu'il n'obtien 0 essaie, sinon il perd
A la fin de la partie, le joueur peut choisir de rejouer ou de quitter le jeu.

# Fichier
- main.rb : Point d'entrée du programme, affiche le message de bienvenue et lance le jeu. Contient la classe Fakir avec la logique du jeu

# Utilisation
Pour lancer le jeu, exécutez ruby main.rb dans votre terminal.

Le jeu est interactif et vous guide à chaque étape.

Veuillez noté qu'il est nécessaire d'installer ruby sur votre machine dufait que Ruby est un langage interpreté.

installer Ruby : [Ruby](https://www.ruby-lang.org/fr/downloads/)