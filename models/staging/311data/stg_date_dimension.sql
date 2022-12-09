select ROW_NUMBER() over() As Date_ID, created_date as Date_Value, due_date as Due_Date, Created_Day as Day, Created_Month as Month_Name, 
Created_Year as Year
from `bubbly-trail-370516.311uniqueIdentifier.311wUI` 
limit 5