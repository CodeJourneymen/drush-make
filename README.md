drush-make
==========

My drush make files and scripts to build a site quickly (in Drupal 6 and Drupal 7) with my commonly used modules turned on and some basic configuration


You can spin up a D6 or D7 site quickly to test that module you just found.

./make_d7_site [dbanme] [password] "email]

It will create a new site in this directory called [dbname] with the database name also of [dbname]
The admin users is superuser
The admin password is [password]
The admin email is [email]

The script also does a drush site-install, so you can immediately go to the site.
The mysql username/password are hard coded to root/root in the shell script you will have to edit to match you mysql username/password.


Also included is my gitconfig file.
Add anything in this you like to your own ~/.gitconfig file
most useful is 
$ git log
which pretty prints out  the git log in a consise way.
And when you patch some files (that you don't want to commit, but don't want to show up as changed al the time) you can use ignore/unignore/ignored

$ git ignore [file]
treats a file like it's unchanged. i.e. won't make your repo dirty

$ git unignore [file]
makes you previously ignored file now be treated normally by git i.e. if its changed, git statsu will now report it.

$ git ignored
Lists all the files you have used $git ignore on.


