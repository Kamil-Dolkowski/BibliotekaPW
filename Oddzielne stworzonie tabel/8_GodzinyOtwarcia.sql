USE BibliotekaPW;

CREATE TABLE GodzinyOtwarcia (
	GodzinyOtwarciaID int PRIMARY KEY IDENTITY(1,1),
	DzienTygodnia varchar(12) NOT NULL,
    Godziny varchar(11) NOT NULL,
    Status varchar(9) NOT NULL
);