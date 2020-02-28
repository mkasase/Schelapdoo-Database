/*
==========================
Query one
- Top 10 participants that
- have won the event in a particular
- sport and thier group by the Fastest event
- Money
==========================
*/

Select Participant.First_name, Participant.Last_name,
Event.Event_activity, Event.Event_date, Event.Event_Location,
Results.Time_result,
Results.Standing_Position AS Race_Positon
From Participant
Right outer join Event
on Participant_ID = Event_ID
INNER join Results
on Event.Event_ID = Results.Event_ID
Order by (Results.Standing_Position) Asc,(Results.Time_result) ASC
Limit 10;


/*
-============================================
Query one
-Produce the email listings to participants from the database
-from a set age range by showing them what type of activities
-they will participants from the client who are currently
-sponsoring the event providing the details
==========================
*/

Select Participant.First_name, Participant.Last_name,
Participant.Email_Address, Participant.Age,
Event.Event_date,Event.Event_Location,
Client.Client_name, Client.Email_Address, Client.Contact_number
From Participant
Right outer Join Event
on Participant_ID = Event_ID
left OUTER Join Client
on Event_ID = Client_ID
Group by Event.Event_date ASC;

/*
==========================
Query two
- Volunteers that are qualified to
- medical and the event that are
- stationed with location and client
==========================
*/

Select Volunteer.First_name, Volunteer.Last_name,
Volunteer.Email_Address, Event.Event_date,
Event.Event_Location, Client.Client_name,
Station.Station_type AS Medical_Area
From Volunteer
right outer join Event
on Volunteer_ID = Event_ID
left outer join Client
on Event_ID = Client_ID
right join Station
on Event.Event_ID = Station.Event_ID
Where Qualification != "non_medical"
AND Station.Station_type like "First_Aid"
Group by Event.Event_date;



/*
==========================
Query three
- Top 10 participants that
- have won the event in a particular
- sport and thier group by the Fastest event
==========================
*/

Select Participant.First_name, Participant.Last_name,
Event.Event_activity, Event.Event_date, Event.Event_Location,
Results.Time_result, Results.Standing_Position, ROUND(Paid_Sponsor,2)
From Participant
Right outer join Event
on Participant_ID = Event_ID
INNER join Results
on Event.Event_ID = Results.Event_ID
Order by Results.Standing_Position Asc
Limit 10;

/*
==========================
Query four
- Client has stationed at the
- events, the types of cost
- pariticipants taking part
==========================
*/

Select Participant.First_name, Participant.Last_name,
Participant.Email_Address
From Participant
Right outer join Event
on Participant_ID = Event_ID
Right join Results
on Event.Event_ID = Results.Event_ID;
limit 10;

/*
==========================
Query five
- Has the participant paid for the
- event who hadn't with the email
- reply to partake in the event
==========================
*/

Select Participant.first_name, Participant.last_name,
Event.Event_activity, Event.Event_date
From Participant
Right outer Join Event
on Participant_ID = Event_ID
left OUTER Join Client
on Event_ID = Client_ID;

/*
==========================
Query six
- monthly results/ yearly financial results
- performance according to year by clients
==========================
*/

Select Client.Client_name,ROUND(Event_cost,2) AS Event_cost, Event_date
from Invoice
right outer join Client
on Invoice.Client_ID = Client.Client_ID
right outer Join Event
on Client.Client_ID = Event.Event_ID
Order by Event_date ASC;
WHERE (Event_date Between 2014-03-11 And 2014-12-31) AS 2014_summary
AND (Event_date Between 2015-01-01 And 2015-12-31) AS 2015_summary
And (Event_date Between 2016-01-01 AND 2016-12-30) AS 2016_summary
And (Event_date Between 2017-01-03 AND 2017-03-08) AS 2017_summary
group by 2014_summary, 2015_summary, 2016_summary, 2017_summary;

/*
==========================
Query Seven
-  Participant that are taking part
- in events, however people at
- particular age group would need
- specific attentopn based on
- start and end of an event
==========================
*/
Select Participant.First_name, Participant.Last_name,

=============================================================
/*

Reflection of the Unit

Database principles is considered an improvement from Introduction
from database and design which consists of learning new features
that will enhance how  the database is used through the use of
techniques to handle more complex queries. The unit considered an
interesting and unique with the content that allow myself to learn
by developing a case study to provide a database towards meeting
the user requirements. What I felt was an enjoyment from this unit
would be learning experience of further techniques in SQL by using
methods such as views, the research was important to understand how
some techniques would be applied with the case study.


However the drawbacks that the unit would be purpose of some
of the seminar although the content that was provided mainly
related to the coursework by covering the information collected
from the lecturer notes. Another issue I found with the unit was
considered as helpful would be harsh marking as the term meaningful
query had to relate the case study since the information has fit
for purpose, it would make this difficult to attain expected
results which helps by careful research into development with
trials and error to produce the expected results required.
*/
