select ROW_NUMBER() over() As Date_ID, judgment_entry_date as Judgement_Entry_Date, Issue_Day, Issue_Month, Issue_Year
from `bubbly-trail-370516.violationsdata.rawViolationsData` 
limit 5
