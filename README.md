# Exemple de site statique

Utilise [Zola](https://www.getzola.org/).

* [Procédure d'installation](https://www.getzola.org/documentation/getting-started/installation/)
* Procédure d'installation sur Windows:
    * Démarrer cmd.exe (invite de commande)
    * Exécuter `.\install.bat`
* Procédure d'installation sur MacOS et Linux:
    * Exécuter `.\install.sh`

## Structure

Voir <https://www.getzola.org/documentation/getting-started/directory-structure/>

## Résultat

Voir <https://dalf.github.io/zola_example/>

## Ajout d'une entrée

Créer un fichier dans `content` en se basant sur les fichier existants (exercice #2):

```
+++
title = "Titre de la page"
description = "Description affichée"
date = 2023-05-27T00:00:00Z
draft = false

[taxonomies]
tags = ["tag 1", "tag 2"]

[extra]
toc = true
+++

Contenu en markdown
```

Le texte entre les `+++` est au format [TOML](https://fr.wikipedia.org/wiki/TOML) (un version du format INI amélioré).
Pour faire simple, il suffit de reprendre les exemples existants.

## Démarrer le serveur

`zola serve`

Puis ouvrir la page <http://127.0.0.1:1111> comme indiqué.

Les modifications sont automatiquement prises en compte et la page dans le navigateur est automatiquement rechargée.

Note: en dehors des PC à la HEG il suffit d'écrire `zola serve` sans `.\`.

## Compiler le site

`zola build`

Tout le contenu est dans le répertoire `public`

## Fork

Le projet peut être forké: le site sera automatiquement construit dans le fork.

Avant le premier commit, aller dans "Settings", puis "Actions", "Général", et dans la section "Workflow permissions", choisir "Read and write permissions ".
