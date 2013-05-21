drush-make
==========

My drush make files and scripts to build a site quickly (in Drupal 6 and Drupal 7) with my commonly used modules turned on and some basic configuration


You can spin up a D6 or D7 site quickly to test that module you just found.

./make_d7_site <dbanme> <password> <email>

It will create a new site in this directory called <dbname> with the database name also of <dbname>
The admin users is superuser
The admin password is <password>
The admin email is <email>

The script also does a drush site-install, so you can immediately go to the site.
The mysql username/password are hard coded to root/root in the shell script you will have to edit to match you mysql username/password.
