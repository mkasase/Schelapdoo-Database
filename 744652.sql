=====================================================
-- 
-- Query one:
-- Should output the name of the volunteer 
-- What they should be participanting in which sport
-- What between 2015 and 2016
-- which charity is currently the sponsoring them #
-- 
=====================================================
Select Participant.First_name, Participant.Last_name, Event.name, 
Event.Event_time, Event.Event_date, Event.Event_Location
From Participant
Join Event 
on Participant_ID = Event_ID
Where  Event_Location != "London" and  Event_Location != "Cardiff";


=====================================================
-- 
-- Query two: 
-- Should see what charities have been added in 
-- the event, the amount of cost to produce the 
-- event, and determine the location. and produce an email 
-- list for participants based on specific age range
-- 
=====================================================
Select Volunteer.first_name, Volunteer.last_name, Event.Event_Location
From Volunteer 
Join Event
on Volunteer_ID = Event_ID
Join Station 
on Event.Event_ID = Station.Event_ID;


=====================================================

-- Query Three:
-- Produce the email listings to participants from the database
-- from a set age range by showing them what type of activities
-- they will participants from the client who are currently 
-- sponsoring the event providing the details 

=====================================================
Select Participant.First_name, Participant.Last_name, 
Participant.Email, Participant.Age, Event.Event_date, 
Event.Event_Location, Client.name, Client.Email
From Participant
Join Event
on Participant_ID = Event_ID
Join Client
on Event_ID = Client_ID
Order by Age, First_name;


