select ROW_NUMBER() over() As Channel_ID, channel_type as Channel_Type
from `bubbly-trail-370516.311uniqueIdentifier.311wUI` 
limit 5
