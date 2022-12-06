select ROW_NUMBER() over() As AgencyID, issuing_agency as Agency, precinct as Precinct
from `bubbly-trail-370516.violationsdata.rawViolationsData` 
limit 5