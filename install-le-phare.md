Configuration de poste
======================

La 1ere chose à faire après une installation d'OS est de mettre à jours vos dépôts et logiciels :

```shell
sudo apt-get update && sudo apt-get upgrade
```

Logiciels de base
-----------------

* `vim`: éditeur de texte terminal (autre: nano, emacs, etc.)
* `curl`: transfer a URL
* `git`: VCS
* `make`, `build-essential`: utilitaires de gestion de programme et lib
* `tree`: utilitaire permettant d'afficher un arbre de répertoire/fichier dans le terminal
* `htop`: process viewer
* `imagemagick`: utilitaires de gestion d'image (peut être appelé par php/js)

    $ sudo apt-get install htop vim curl tree git make build-essential imagemagick

Selon vos préférences, un outil de visualisation de dépôt git :

* `gitk`: sudo apt-get install gitk
* ...autre...

Accès Le Phare
--------------

Demander rapidement à votre référent d'intégration un accès aux comptes et outils essentiels Le Phare :

* Création d'un [trigramme](https://fr.wikipedia.org/wiki/Trigramme) Le Phare, du type `jba` (pour Jacques Bachelier).
* Compte de messagerie mail : [Gmail](https://www.google.com/gmail/), avec un email du type `prénom.nom@lephare.com`.
* Compte de messagerie interne : [Slack](https://slack.com/intl/fr-fr),

Pour les accès suivants, vérifier avec votre référent que vous faites partie des bons groupes d'accès et avez les droits corrects de lecture/modification :

* Compte de gestion de projet : [Wrike](https://www.wrike.com/fr/)
* Accès à l'outil [params]()
* Accès à [Gitlab]()
* Accès à [packagist](https://packagist.com/profile/) => Utiliser son compte gitlab pour la connexion
* Accès à [Bitbucket]()

Penser à bien enregistrer vos identifiants et mots de passe à chaque fois.

Le Phare dispose d'outils partagés, accessibles via le réseau interne. Les urls :

* params
* adminer
* maildev
* https://help.lephare.com/

Et des outils utilisables selon les projets

* https://cron.lephare.io/

Pour les projets Le Phare
-------------------------

### Stack container : Docker

[Docker CE]((https://docs.docker.com/install/linux/docker-ce/ubuntu/))
[Docker Compose](https://docs.docker.com/compose/install/#install-compose)

#### Installation du dépôt logiciel

    $ sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common

    $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

Sur la commande suivante, vérifier que la clef correspond à `9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88`.

    $ sudo apt-key fingerprint 0EBFCD88

Puis

    $ sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

#### Installation de Docker CE

    $ sudo apt-get update
    $ sudo apt-get install docker-ce

et tester :

    $ sudo docker run hello-world

#### Installation de Docker Compose

    $ sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    $ sudo chmod +x /usr/local/bin/docker-compose
    $ docker-compose --version

### Stack Ruby

#### Package manager

[Bundler](https://bundler.io/), indispensable pour les anciens projets du Phare et gérer déploiements et opérations associées :

    $ sudo apt-get install bundler

### Stack JS

#### NPM - Node 8

Node 10 est sorti, mais ne posons pas tout de suite des problèmes de compatibilité avec les projets...

    $ curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -`
    $ sudo apt-get install -y nodejs`

#### NVM ou autre gestionnaire de version node (optionnel)

Voir https://github.com/creationix/nvm

... @TODO ...

#### Outils

... @TODO ...

* sudo npm install --global gulp-cli
* yarn https://yarnpkg.com/lang/en/docs/install/#debian-stable
* webpack global
* babel
* php-cs-fixer

##### php-cs-fixer

    $ curl -L https://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -o php-cs-fixer

Puis :

    $ sudo chmod a+x php-cs-fixer
    $ sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer

### Clef SSH

Créer ou récupérer une clef SSH sur un précédent poste Le Phare ou personnel.
Consulter [l'article Github sur la génération de clef SSH](https://help.github.com/articles/generating-ssh-keys/)

Vos clefs se retrouvent dans `~/.ssh`.

### Navigateurs

* Chrome
* Firefox Dev

... @TODO ...

### Stack PHP

#### Package manager

Télécharger composer sur https://getcomposer.org/download/

puis déplacer le fichier `.phar` dans un emplacement global via https://getcomposer.org/doc/00-intro.md#globally

... @TODO ...

...PEAR...

### Dossier de travail

Dans `~/`, se créer un dossier hébergeant vos futurs projets, nommé `workspace`, `sandbox` ou `petit_chaton`.

    $ cd ~/
    $ mkdir workspace

### Docker-stack Le Phare

Dans le dossier nouvellement crée, `workspace` par exemple, installer la `docker-stack` (du Phare) :

    $ cd workspace
    $ git clone git@gitlab.com:lephare/docker-stack.git

Puis :

    $ cd docker-stack/dev
    $ cp .env.dist .env
    $ docker-compose up

... @TODO ...

### Alias et var terminal

... @TODO ...

DOCKER_HOST_SUFFIX
alias commun git/docker le Phare...
config DNSmasq (vraiment utile ?)
/etc/hosts

Logiciels et librairies optionnelles
------------------------------------

### Pour personnaliser le terminal

#### ZSH

... @TODO ...

    $ sudo apt-get install zsh

Checker la version:

    $ zsh --version

Le mettre en shell par défaut :

    $ chsh -s $(which zsh)

logout / login d'Ubuntu (vous devez revenir au mot de passe d'ouverture de session et vous reloguer)

si OK, il demande une config au démarrage

et pour vérifier qu'il est par défaut `echo $SHELL : /bin/zsh` ou similaire.

#### Oh My ZSH + config

... @TODO ...

    $ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### Gestionnaire de mot de passe

Selon vos préférences :

* [KeePassX](): $ sudo apt-get install keepassx
* [Enpass]():

... @TODO ...

### Autre lib intéressantes

* `filezilla`: FTP
*

    $ sudo apt-get install vlc gimp gitk filezilla

Et des codecs multimédia optionnels, non-libres :

    $ sudo apt-get install ubuntu-restricted-extras

### Utilitaires systèmes

Pour personnaliser l'environnement de bureau Gnome :

    $ sudo apt-get install gnome-tweak-tool

Pour nettoyer des fichiers temporaires (à utiliser avec précaution) :

    $ sudo apt-get install bleachbit

### Pour la messagerie interne, Slack

Consulter le site officiel [Slack pour OS Linux](https://slack.com/intl/fr-fr/downloads/linux).

### Gestionnaire de paquet universel snap

Est-ce promu à un brillant avenir ? Voir [le site officiel Snapcraft](https://snapcraft.io/)

Et la liste des [logiciels installables via packets snap](https://snapcraft.io/store).

    $ sudo apt update
    $ sudo apt install snapd

### Éditeur de texte:

Selon vos préférences, au choix :

* [Sublime Text](https://www.sublimetext.com/)
* [PHPStorm]() : la version beta est gratuite, sans limitation de durée.
* [Visual Studio Code]()

#### Sublime Text

Installer Sublime-text

    $

Lancer l'éditeur et ajouter package-control.
Ajouter :

* sublime-linter
* SublimeLinter-php
* [SublimeLinter-annotations](https://github.com/SublimeLinter/SublimeLinter-annotations)
* [php-cs-fixer](https://packagecontrol.io/packages/PHP%20CS%20Fixer)
* SidebarEnhancement
* DocBlockr
* EditorConfig
* GitGutter
* less/sass/twig
* A File icon

Clean-up
--------

```
sudo apt-get -f install && sudo apt-get autoremove && sudo apt-get -y autoclean && sudo apt-get -y clean
```


En télétravail
--------------

Consulter appliquer les recommandations de :

* [https://help.lephare.com/t/connexion-ssh-sans-ip-fixe/139](https://help.lephare.com/t/connexion-ssh-sans-ip-fixe/139)
