select ROW_NUMBER() over() As Complaint_ID, complaint_type as Complaint_Type, descriptor as Description
from `bubbly-trail-370516.311data.raw311Data` 
limit 5