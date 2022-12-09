select ROW_NUMBER() over() As Location_ID, incident_address as Location,location_type as Location_Type, street_name as Street, borough as Borough, city as City,
incident_zip as Zipcode
from `bubbly-trail-370516.311uniqueIdentifier.311wUI` 
limit 5