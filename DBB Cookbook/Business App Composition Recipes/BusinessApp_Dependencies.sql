/*
 * Find relevant infrastructure that impacts or supports a specific set of business application(s).
 */
SELECT
    businessapplication_fk
    ,business_app_name
    ,object_name                AS dependent_object_name
    ,related_object_url         AS dependent_object_url
    ,component_type
    ,port
    ,device_fk                  AS impacted_device_fk
    ,impacted_object            AS impacted_device_name
    ,device_host
    ,device_subtype
    ,impact_reason
    ,relationship_type
    ,relationship_url
    ,trends_url
FROM view_dbb_adm_businessapp_composition_v2
WHERE 
    business_app_name IN  ('QTC Platform');
