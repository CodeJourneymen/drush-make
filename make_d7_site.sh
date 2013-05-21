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

# Use a drush makefile
drush make drupal7.drush.make $1 -y

cd $1
drush si --db-url=mysqli://root:root@localhost/$1 --account-name=superadmin --account-pass=$2 --site-name=$1 --site-mail=$3 -y


# Ctools & Views & proper toolbar.
drush en admin_menu -y
drush en admin_menu_toolbar -y
drush dis toolbar -y
#drush dis shortcut -y
drush en module_filter -y
drush en fpa -y
drush en diff -y

drush en ctools -y
drush en views -y
drush en views_ui -y
drush en advanced_help -y
#drush en environment_indicator -y

drush en features -y
drush en strongarm -y 
drush en context -y
drush en context_ui -y

drush en entity -y
drush en entity_token -y
drush en rules -y
drush en rules_admin -y

drush en token -y
drush en libraries -y

#devel stuff
drush en devel -y
drush en devel_generate -y
drush en omega_tools -y
drush en delta -y
drush en delta_ui -y
drush en delta_color -y
drush en delta_blocks -y

drush cc all

echo ""
echo "-------------"
echo ""
echo "Finished"
echo ""
echo "created Drupal 7 site $1. Username/passwd superadmin/$2 . email $3"
echo ""
echo ""
