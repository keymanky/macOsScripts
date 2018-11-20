TIPO DE SHELL
	
AÑADIR UN ALIAS EN CONSOLA
	ln -s ~/Documents/books ~/Desktop/


The reason you separate the login and non-login shell is because the .bashrc file is reloaded every time you start a new copy of Bash. The .profile file is loaded only when you either log in or use the appropriate flag to tell Bash to act as a login shell.

Personally,

I put my PATH setup into a .profile file (because I sometimes use other shells);
I put my Bash aliases and functions into my .bashrc file;
I put this

#!/bin/bash
#
# CRM .bash_profile Time-stamp: "2008-12-07 19:42"
#
# echo "Loading ${HOME}/.bash_profile"
source ~/.profile # get my PATH setup
source ~/.bashrc  # get my Bash aliases
in my .bash_profile file.

Oh, and the reason you need to type bash again to get the new alias is that Bash loads your .bashrc file when it starts but it doesn't reload it unless you tell it to. You can reload the .bashrc file (and not need a second shell) by typing

source ~/.bashrc
which loads the .bashrc file as if you had typed the commands directly to Bash.

