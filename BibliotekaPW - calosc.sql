USE LibraryPW;

CREATE TABLE Author (
	AuthorID int PRIMARY KEY IDENTITY(1,1),
	Name varchar(15) NOT NULL,
	Surname varchar(30) NOT NULL,
	Pseudonym varchar(30)
);

CREATE TABLE Publisher (
	PublisherID int PRIMARY KEY IDENTITY(1,1),
	Name varchar(30) NOT NULL,
	Status varchar(30) NOT NULL
);

CREATE TABLE Review (
	ReviewID int PRIMARY KEY IDENTITY(1,1),
	Rating int NOT NULL,
    Content varchar(300),
    Username varchar(30) NOT NULL,
    Hide bit,
);

CREATE TABLE Genre (
	GenreID int PRIMARY KEY IDENTITY(1,1),
	Name varchar(20) NOT NULL,
    Hide bit
);

CREATE TABLE Localization (
	LocalizationID int PRIMARY KEY IDENTITY(1,1),
	City varchar(30) NOT NULL,
    Street varchar(30) NOT NULL,
    Number int NOT NULL,
    PostCode varchar(6) NOT NULL,
    Voivodeship varchar(19) NOT NULL,
);

CREATE TABLE Book (
    BookID int PRIMARY KEY IDENTITY(1,1),
    AuthorID int NOT NULL,
    Title varchar(50) NOT NULL,
    GenreID int,
    Description varchar(300),
    ReviewID int,
    PublicationDate int,
    PublisherID int,
    Status varchar(15) NOT NULL,
	FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID),
    FOREIGN KEY (ReviewID) REFERENCES Review(ReviewID),
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

CREATE TABLE OpeningHours (
	OpeningHoursID int PRIMARY KEY IDENTITY(1,1),
	WeekDay varchar(12) NOT NULL,
    Hours varchar(11) NOT NULL,
    Status varchar(9) NOT NULL
);

CREATE TABLE Library (
	LibraryID int PRIMARY KEY IDENTITY(1,1),
	Name varchar(40) NOT NULL,
    LocalizationID int,
    OpeningHoursID int,
    FOREIGN KEY (LocalizationID) REFERENCES Localization(LocalizationID),
    FOREIGN KEY (OpeningHoursID) REFERENCES OpeningHours(OpeningHoursID)
);

CREATE TABLE Piece (
	PieceID int PRIMARY KEY IDENTITY(1,1),
	BookID int NOT NULL,
    Status varchar(20) NOT NULL,
    LibraryID int NOT NULL,
    Wear int,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (LibraryID) REFERENCES Library(LibraryID)
);

CREATE TABLE Account (
	AccountID int PRIMARY KEY IDENTITY(1,1),
	Name varchar(15) NOT NULL,
    Surname varchar(30) NOT NULL,
    Status varchar(10) NOT NULL,
    Login varchar(20) NOT NULL,
    Password varchar(20) NOT NULL,
    Type varchar(20) NOT NULL,
    IndexPW varchar(6),
    Rentals int,
    PhoneNumber varchar(9) NOT NULL,
    Email varchar(40) NOT NULL,
);

CREATE TABLE BookOrder (
	OrderID int PRIMARY KEY IDENTITY(1,1),
	PieceID int NOT NULL,
    AccountID int NOT NULL,
    Date date NOT NULL,
    PickupTime time NOT NULL,
    FOREIGN KEY (PieceID) REFERENCES Piece(PieceID),
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

CREATE TABLE Rental (
	RentalID int PRIMARY KEY IDENTITY(1,1),
	OrderID int NOT NULL,
    PieceID int NOT NULL,
    RentalDate date NOT NULL,
    RentalTime time NOT NULL,
    ReturnDate date NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES BookOrder(OrderID),
    FOREIGN KEY (PieceID) REFERENCES Piece(PieceID)
);

CREATE TABLE Extension (
	ExtensionID int PRIMARY KEY IDENTITY(1,1),
	RentalID int,
    Type varchar(15),
    Time time,
    FOREIGN KEY (RentalID) REFERENCES Rental(RentalID)
);

ALTER TABLE Rental ADD ExtensionID int NOT NULL;
ALTER TABLE Rental ADD FOREIGN KEY (ExtensionID) REFERENCES Extension(ExtensionID)

CREATE TABLE Notification (
	NotificationID int PRIMARY KEY IDENTITY(1,1),
	ExtensionID int NOT NULL,
    Content varchar(200) NOT NULL,
    Type varchar(15),
    AccountID int NOT NULL,
    FOREIGN KEY (ExtensionID) REFERENCES Extension(ExtensionID),
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

CREATE TABLE Config (
	ConfigID int PRIMARY KEY IDENTITY(1,1),
	ConfigKey varchar(30) NOT NULL,
    Value int NOT NULL,
    ModificationDate date NOT NULL,
    AddDate date NOT NULL
);
