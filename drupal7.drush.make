core=7.x
api=2

defaults[projects][subdir] = contrib
; core modules
projects[] = drupal
projects[] = views
projects[] = ctools
; Date modules
projects[] = date
;projects[] = calendar
; Utility modules
projects[] = admin_menu
projects[] = admin_views
projects[] = advanced_help
projects[] = environment_indicator
projects[] = module_filter
projects[] = features
projects[] = strongarm
projects[] = diff
projects[] = context
projects[] = entity
projects[] = entity_view_mode
projects[] = bean
projects[] = token
projects[] = rules
projects[] = fpa
projects[] = libraries
projects[] = og
projects[] = og_extras

; devel tools
projects[] = devel
projects[] = devel_themer
projects[simplehtmldom][version] = "1.12"


; Bootstrap V3.02
; Bootstrap that works with devel_themer
projects[] = bootstrap
; Better bootstrap views integration for columns in tables
projects[views_bootstrap][version] = "3.x-dev"
; Better column layout in panels.
projects[panels_bootstrap_layouts][version] = "3.x-dev"

projects[] = jquery_update
projects[] = entityreference
projects[] = entityreference_prepopulate
projects[] = views_bulk_operations
projects[] = ife
projects[] = panels
projects[] = panelizer
projects[] = adminimal_theme
projects[adminimal_admin_menu][version] = "1.x-dev"
projects[] = pathologic
projects[] = field_group
projects[] = email
projects[] = phone
projects[] = breakpoints
projects[] = picture


; for openalayers maps also downlaod
; geophp geofield geocoder geocoder_autocomplete openlayers mapbox

