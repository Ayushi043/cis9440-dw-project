select ROW_NUMBER() over() As Location_ID, state as State,borough
from `bubbly-trail-370516.violationsdata.rawViolationsData` 
limit 5