/*
 * Discover all business apps that are impacted by a specific set of infrastructure devices and the relationships between them.
 */
SELECT
    object_name
    ,device_fk
    ,impacted_object
    ,device_host
    ,device_subtype
    ,impact_reason
    ,relationship_type
    ,businessapplication_fk
    ,business_app_name
    ,port
    ,component_type
    ,business_app_tech_owner
    ,business_app_owner
    ,business_app_service_level
    ,business_app_migration_group
    ,business_app_criticality
    ,business_app_type
    ,business_app_description
    ,business_app_contains_pii
    ,business_app_internet_accessible
    ,business_app_notes
    ,related_object_url
    ,relationship_url
    ,business_app_url
    ,business_app_diagram
FROM
    view_dbb_adm_businessapp_composition_v2
WHERE 
    object_name IN('<your-device-name-here>')
ORDER BY
    business_app_name ;
