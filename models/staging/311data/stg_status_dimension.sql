select ROW_NUMBER() over() As Status_ID, status as Status 
from `bubbly-trail-370516.311data.raw311Data` 
limit 5