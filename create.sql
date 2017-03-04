Create table PATIENTS(
    Primary key ssn varchar(10),
    name varchar(128),
);

Create table Assistants(
    Primary key ssn varchar(10),
    name varchar(128),
);

Create table OUTINGS(
    pssn varchar(10) unique,
    name varchar(128),
    assn varchar(10) unique,
    aname varchar(128),
    start            date,
    end                date,
    foreign key(pssn) references PATIENTS(ssn),
    foreign key(assn) references Assistants(ssn),
    foreign key(name) references PATIENTS(name),
    foreign key(aname) references Assistants(name),
);
