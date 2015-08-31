#
# When I create a new pantehon install, I want my usual modules
#
echo ""
echo "Installing Standard modules on top of Pantheon"
echo ""

drush dl views
drush dl ctools
drush dl date
#drush dl calendar
drush dl admin_menu
drush dl admin_views
drush dl advanced_help
drush dl environment_indicator
drush dl module_filter
drush dl features
drush dl strongarm
drush dl diff
drush dl context
drush dl entity
drush dl token
drush dl rules
# DEVEL
drush dl devel
drush dl devel_themer
# need this version for devel themer
drush dl simplehtmldom-1.12
#
drush dl fpa
drush dl libraries
drush dl og
drush dl jquery_update
drush dl og_extras
drush dl entityreference
drush dl entityreference_prepopulate
drush dl views_bulk_operations
drush dl ife
drush dl panels
#drush dl panelizer-3.dev
drush dl adminimal_theme
drush dl adminimal_admin_menu-1.x-dev
# bootstrap
drush dl bootstrap
drush dl views_bootstrap-7.x-3.x-dev
drush dl panels_bootstrap_layouts-7.x-3.x-dev
drush dl bootstrap_fieldgroup
#
# Radix
drush dl radix
drush dl radix_layouts
drush dl radix_views
#
drush dl media-2.0-beta1
drush dl file_entity
drush dl ckeditor
# Test Display Suite
#drush dl ds
#drush dl ds_bootstrap_layouts





drush en admin_menu -y
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

drush en entity -y
drush en entity_token -y
#drush en rules -y
#drush en rules_admin -y

drush en token -y
drush en libraries -y

#devel stuff
drush en devel -y
drush en devel_generate -y

drush en entityreference -y
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
 
drush en admin_views -y

drush cc all

echo ""
echo "-------------"
echo ""
echo "Finished"
echo ""
echo ""
