select ROW_NUMBER() over() As Status_ID, status as Status 
from `bubbly-trail-370516.311uniqueIdentifier.311wUI` 
limit 5