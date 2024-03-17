USE BibliotekaPW;

CREATE TABLE Autor (
	AutorID int PRIMARY KEY IDENTITY(1,1),
	Imie varchar(15) NOT NULL,
	Nazwisko varchar(30) NOT NULL,
	Pseudonim varchar(30)
);



