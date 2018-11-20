Summary:

If you want to add a path (e.g. /your/additional/path) to your PATH variable for your current user only and not for all users of your computer, you normally put it at the end of ~/.profile like in one of those two examples:

PATH="/your/additional/path:$PATH"
PATH="$PATH:/your/additional/path"
Note that the path priorities are descending from left to right, so the first path has the highest priority. If you add your path on the left of $PATH, it will have the highest priority and executables in that location will override all others. If you add your path on the right, it will have the lowest priority and executables from the other locations will be preferred.

However, if you need to set that environment variable for all users, I would still not recommend touching /etc/environment but creating a file with the file name ending in .sh in /etc/profile.d/. The /etc/profile script and all scripts in /etc/profile.d are the global equivalent of each user's personal ~/.profile and executed as regular shell scripts by all shells during their initialization.

More detail:

/etc/environment is a system-wide configuration file, which means it is used by all users. It is owned by root though, so you need to be an admin user and use sudo to modify it.

~/.profile is one of your own user's personal shell initialization scripts. Every user has one and can edit their file without affecting others.

/etc/profile and /etc/profile.d/*.sh are the global initialization scripts that are equivalent to ~/.profile for each user. The global scripts get executed before the user-specific scripts though; and the main /etc/profile executes all the *.sh scripts in /etc/profile.d/ just before it exits.

The /etc/environment file normally contains only this line:

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
It sets the PATH variable for all users on the system to this default value, which should not be changed in a major way. At least you should not remove any of the important paths like /bin, /sbin, /usr/bin and /usr/sbin from it.

This file is read as one of the first configuration files by every shell of every user. Note that it is not a shell script. It is just a configuration file that gets parsed somehow and that may only contain environment variable assignments!

The ~/.profile file can contain many things, by default it contains amongst other stuff a check whether a ~/bin directory exists and adds that to the user's existing PATH variable, like this (on older Ubuntu releases prior to 16.04 - newer releases add it unconditionally):

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
You see that the old value of PATH gets reused here and the new path is only appended to the beginning instead of overwriting everything. When you manually want to add new paths, you should also always keep the old $PATH value somewhere in the new string.

This initialization script is read only by the shells of the user to which it belongs, but there's another condition:

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
So if you use the default Bash shell, you should make sure that you don't have a ~/.bash_profile or ~/.bash_login if you want the changes in ~/.profile to have an effect for your user.