select ROW_NUMBER() over() As Location_ID, location_type as Location_Type, street_name as Street, borough as Borough, city as City,
incident_address as Location, incident_zip as Zipcode
from `bubbly-trail-370516.311data.raw311Data` 
limit 5