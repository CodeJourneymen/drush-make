#!/bin/bash
# arguments <dbname> <email>
if [ -z $1 ]
then 
	echo "Arguments <dbanme> <password> <email>"
  exit
fi
if [ -z $2 ]
then 
	echo "Arguments <dbanme> <password> <email>"
  exit
fi
if [ -z $3 ]
then 
	echo "Arguments <dbanme> <password> <email>"
  exit
fi

drush make drupal6.drush.make ./$1

cd $1
drush si --db-url=mysqli://root:root@localhost/$1 --account-name=superadmin --account-pass=$2 --site-name=$1 --site-mail=$3 -y

# Ctools & Views & toolbar.
drush en advanced_help -y
drush en admin_menu -y
drush en module_filter -y
drush en fpa -y
drush en ctools -y
drush en views -y
drush en views_ui -y

drush en environment_indicator -y
drush en diff -y

# CCK
drush en userreference text optionwidgets number nodereference fieldgroup content -y

#devel stuff
drush en devel -y
drush en devel_generate -y

drush en token -y
drush en rules rules_admin -y

echo ""
echo "-------------"
echo ""
echo "Finished"
echo ""
echo "created Drupal 6 site $1. Username/passwd superadmin/$2 . email $3"
echo ""
echo ""
