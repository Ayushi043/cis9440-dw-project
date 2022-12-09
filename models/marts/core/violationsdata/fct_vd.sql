with
    voilation_data as (
        select *
        from {{ ref('stg_voilationdt')}}
        
    ),

    agency_dim as (select * from {{ ref("stg_Agency_dimension") }}),
    date_dim as (select * from {{ ref("stg_Date_dimension") }}),
    vehicle_dim as (select * from {{ ref("stg_vehicle_dimension") }}),
    voilation_dim as (select * from {{ ref("stg_violation_type_dimension") }}),
    loc_dim as (select * from {{ ref("stg_Location_dimension") }})


select voilation_dim.Violation_ID, loc_dim.Location_ID,
agency_dim.AgencyID,
date_dim.Date_ID,
vehicle_dim.Vehicle_ID


from voilation_data
left join loc_dim on (loc_dim.Location_ID = voilation_data.Violationdata_ID)
left join agency_dim on (agency_dim.AgencyID = voilation_data.Violationdata_ID)
left join date_dim on (date_dim.Date_ID = voilation_data.Violationdata_ID)
left join vehicle_dim on (vehicle_dim.Vehicle_ID = voilation_data.Violationdata_ID)
left join voilation_dim on (voilation_dim.Violation_ID = voilation_data.Violationdata_ID)
 
 