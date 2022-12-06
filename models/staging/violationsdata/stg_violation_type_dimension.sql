select ROW_NUMBER() over() As Violation_ID, violation as Violation_Type
from `bubbly-trail-370516.violationsdata.rawViolationsData` 
limit 5