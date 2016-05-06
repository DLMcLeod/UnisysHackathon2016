USE FLIGHTMISSIONS;
CREATE TABLE PILOTS(
	Pilot_ID INT NOT NULL AUTO_INCREMENT,
	Pilot_Name VARCHAR(100) NOT NULL,
	Pilot_CTF VARCHAR(100) NOT NULL,
        Pilot_Available VARCHAR(1) NOT NULL,
        PRIMARY KEY (Pilot_ID)
        
);

CREATE TABLE AIRCRAFT(
	Aircraft_ID INT NOT NULL AUTO_INCREMENT,
	Aircraft_Tail_Number VARCHAR(100) NOT NULL,
	Aircraft_Type VARCHAR(100) NOT NULL,
        Aircraft_CTF VARCHAR(100) NOT NULL,
        Aircraft_Available BOOLEAN NOT NULL,
        PRIMARY KEY (Aircraft_ID)
);

CREATE TABLE PILOT_AIRCRAFT(
        Pilot_Aircraft_ID INT NOT NULL AUTO_INCREMENT,
	Pilot_ID INT NOT NULL,
	Aircraft_Type VARCHAR(100) NOT NULL,
        Pilot_Currency BOOLEAN NOT NULL,
        PIMARY KEY (Pilot_Aircraft_ID)
        FOREIGN KEY (Pilot_ID) REFERENCES PILOTS(Pilot_ID)
);

CREATE TABLE MISSIONS(
        Mission_ID INT NOT NULL AUTO_INCREMENT,
        Mission_Name VARCHAR(100) NOT NULL,
	Mision_CTF VARCHAR(100) NOT NULL,
        Mission_Priority INT NOT NULL,
        Mission_Date DATE,
        Mission_Status VARCHAR(1) NOT NULL,
        PRIMARY KEY (Mission_ID)
);

CREATE TABLE MISSIONS_RESOURCES(
        Mission_Resources_ID NOT NULL AUTO_INCREMENT,
        Mission_ID INT NOT NULL,
	Pilot_ID INT NOT NULL,
	Aircraft_ID INT NOT NULL,
        PRIMARY KEY (Mission_Resources_ID)
        FOREIGN KEY (Mission_ID) REFERENCES MISSIONS(Mission_ID)
        FOREIGN KEY (Pilot_ID) REFERENCES PILOTS(Pilot_ID)
        FOREIGN KEY (Aircraft_ID) REFERENCES AIRCRAFT(Aircraft_ID)
);
