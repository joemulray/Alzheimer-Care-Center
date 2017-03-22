/*select all patients who have been on outings
order by ascending id number*/
select pID, name from Outings
join Patients on pID = id 
order by pID asc;


/*select all the patients that have a primary doctor
listed and are on medication*/
select P.name, P.primary_doctor, M.drug
from Patients P, Medication M 
where P.id = M.pID
and P.primary_doctor is not NULL;

/*select all Assistants and locations
where the activity recorded was bingo*/
select A.name, O.location     
from Assistants A, Outings O
where O.activity = 'Bingo'
and A.id = O.aID
order by A.id asc;


/*select all assistants that have either 
recorded a checkin with patient or have
completed a datasheet and get that patients name*/
select id, name, pname from Assistants
join Checkins on id = Checkins.aID
join Datasheets on id = Datasheets.aID
where Checkins.aID is not Null
and Datasheets.aID is not Null;