select ROW_NUMBER() over() As Agency_ID, agency as Agency, agency_name as Agency_Name
from `bubbly-trail-370516.311data.raw311Data` 
limit 5