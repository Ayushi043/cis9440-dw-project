select ROW_NUMBER() over() As Violationdata_ID,*,
from `bubbly-trail-370516.violationsdata.rawViolationsData` 
limit 5