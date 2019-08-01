CREATE TABLE location(
    locationID int,
    locationName varchar(250),
    PRIMARY key (locationID)
    );

CREATE TABLE address(
    addressID int,
    locationID int,
  	street varchar(250),
    city varchar(250),
    
    PRIMARY key (addressID),
    foreign key (locationID) REFERENCES location(locationID)
    );

CREATE TABLE washroom(
    washroomID int,
    addressID int,
    WashroomQuantity int,
    PRIMARY key (washroomID),
    foreign key (addressID) REFERENCES address(addressID)
    );

CREATE TABLE person(
    personID int,
    personName varchar(250),
    locationID int,
    PRIMARY key (personID),
    FOREIGN key (locationID) REFERENCES location(locationID)
    );

CREATE TABLE history(
    historyID int,
    personID int,
    washroomID int,
  	feedback varchar(250),
    date date,
    
    PRIMARY key (historyID),
    foreign key (personID) REFERENCES person(personID),
    foreign key (washroomID) REFERENCES washroom(washroomID)
    );