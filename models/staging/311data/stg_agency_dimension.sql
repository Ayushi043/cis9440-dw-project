select ROW_NUMBER() over() As Agency_ID, agency as Agency, agency_name as Agency_Name
from `bubbly-trail-370516.311uniqueIdentifier.311wUI` 
limit 5