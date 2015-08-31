#!/bin/bash
# arguments <dbname> <email>
if [ -z $1 ]
then 
	echo "Arguments <dbanme> <password> <email> <0 for bootstrap3.0>"
  exit
fi
if [ -z $2 ]
then 
	echo "Arguments <dbanme> <password> <email> <0 for bootstrap3.0>"
  exit
fi
if [ -z $3 ]
then 
	echo "Arguments <dbanme> <password> <email> <0 for bootstrap3.0>"
  exit
fi

# Use a drush makefile
#if [ $4 = "0" ]
#then
#	echo "Building with Bootstrap"
#  drush make drupal7_bootstrap3.0.drush.make $1 -y
#else
#	echo "Building without Bootstrap"
  drush make drupal7.drush.make $1 -y
#fi


cd $1
drush si --db-url=mysqli://root:root@localhost/$1 --account-name=superadmin --account-pass=$2 --site-name=$1 --site-mail=$3 -y


# Ctools & Views & proper toolbar.
drush en admin_menu -y
#drush en admin_menu_toolbar -y
drush dis toolbar -y
drush dis overlay -y
#drush dis shortcut -y
drush en module_filter -y
drush en fpa -y
drush en diff -y

drush en ctools -y
drush en views -y
drush en views_ui -y
#drush en advanced_help -y
drush en environment_indicator -y
drush en adminimal_admin_menu -y
drush dis dashboard -y

drush en features -y
drush en strongarm -y 
#drush en context -y
#drush en context_ui -y

drush en entity -y
drush en entity_token -y
#drush en rules -y
#drush en rules_admin -y

drush en token -y
drush en libraries -y

#devel stuff
drush en devel -y
drush en devel_generate -y
drush en simplehtmldom -y

#drush en entityreference -y
#drush en entityreference_prepopulate -y
drush en views_bulk_operations -y
#drush en og -y
#drush en og_extras -y
drush en page_manager -y
drush en panels -y

drush en jquery_update -y
drush vset -y jquery_update_jquery_version "1.7"

drush en adminimal -y
drush vset admin_theme adminimal -y
drush vset file_temporary_path "/tmp"
drush vset date_default_timezone "America/New_York"
drush vset site_default_country "US"

drush cc all

echo ""
echo "-------------"
echo ""
echo "Finished"
echo ""
echo "created Drupal 7 site $1. Username/passwd superadmin/$2 . email $3"
echo ""
echo ""
