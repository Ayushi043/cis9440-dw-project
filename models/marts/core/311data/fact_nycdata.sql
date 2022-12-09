with
    nycdata as (
        select *
        from {{ ref('stg_311data')}}
        
    ),

    complaint_dim as (select * from {{ ref('stg_complaints_dimension') }}),
    date_dim as (select * from {{ ref('stg_date_dimension') }}),
    channel_dim as (select * from {{ ref('stg_open_data_channel') }}),
    status_dim as (select * from {{ ref('stg_status_dimension') }}),
    agency_dim as (select * from {{ ref('stg_agency_dimension') }}),
    loc_dim as (select * from {{ ref('stg_location_dimension') }})

select complaint_dim.Complaint_ID,
date_dim.Date_ID,
channel_dim.Channel_ID,
status_dim.Status_ID,
agency_dim.Agency_ID,
loc_dim.Location_ID




from nycdata
left join complaint_dim on (complaint_dim.Complaint_ID = nycdata.nycdata_ID)
left join date_dim on (date_dim.Date_ID = nycdata.nycdata_ID)
left join status_dim on (status_dim.Status_ID = nycdata.nycdata_ID)
left join channel_dim on (channel_dim.Channel_ID = nycdata.nycdata_ID)
left join loc_dim on (loc_dim.Location_ID = nycdata.nycdata_ID)
left join agency_dim on (agency_dim.Agency_ID = nycdata.nycdata_ID)
 

