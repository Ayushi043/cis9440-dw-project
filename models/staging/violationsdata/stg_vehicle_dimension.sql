select ROW_NUMBER() over() As Vehicle_ID, plate as Plate_Number, license_type as License_Type
from `bubbly-trail-370516.violationsdata.rawViolationsData` 
limit 5