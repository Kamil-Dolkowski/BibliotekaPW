CREATE DATABASE LibraryPW;
GO

USE LibraryPW;
GO

CREATE TYPE phone_number FROM varchar(9);
CREATE TYPE post_code FROM varchar(6);
GO

CREATE TABLE author (
    author_ID int PRIMARY KEY IDENTITY(1,1),
    name varchar(15) NOT NULL,
    surname varchar(30) NOT NULL,
    pseudonym varchar(30)
);

CREATE TABLE publisher (
    publisher_ID int PRIMARY KEY IDENTITY(1,1),
    name varchar(30) NOT NULL,
    status varchar(30) NOT NULL
);

CREATE TABLE review (
    review_ID int PRIMARY KEY IDENTITY(1,1),
    rating int NOT NULL,
    content varchar(300),
    username varchar(30) NOT NULL,
    hide bit,
);

CREATE TABLE genre (
    genre_ID int PRIMARY KEY IDENTITY(1,1),
    name varchar(20) NOT NULL,
    hide bit
);

CREATE TABLE localization (
    localization_ID int PRIMARY KEY IDENTITY(1,1),
    city varchar(30) NOT NULL,
    street varchar(30) NOT NULL,
    number int NOT NULL,
    post_code post_code NOT NULL,
    voivodeship varchar(19) NOT NULL,
);

CREATE TABLE book (
    book_ID int PRIMARY KEY IDENTITY(1,1),
    author_ID int NOT NULL,
    title varchar(50) NOT NULL,
    genre_ID int,
    description varchar(300),
    review_ID int,
    publication_year int,
    publisher_ID int,
    status varchar(15) NOT NULL,
    FOREIGN KEY (author_ID) REFERENCES author(author_ID),
    FOREIGN KEY (genre_ID) REFERENCES genre(genre_ID),
    FOREIGN KEY (review_ID) REFERENCES review(review_ID),
    FOREIGN KEY (publisher_ID) REFERENCES publisher(publisher_ID)
);

CREATE TABLE opening_hours (
    opening_hours_ID int PRIMARY KEY IDENTITY(1,1),
    week_day varchar(12) NOT NULL,
    hours varchar(11) NOT NULL,
    status varchar(9) NOT NULL
);

CREATE TABLE library (
    library_ID int PRIMARY KEY IDENTITY(1,1),
    name varchar(40) NOT NULL,
    localization_ID int,
    opening_hours_ID int,
    FOREIGN KEY (localization_ID) REFERENCES localization(localization_ID),
    FOREIGN KEY (opening_hours_ID) REFERENCES opening_hours(opening_hours_ID)
);

CREATE TABLE piece (
    piece_ID int PRIMARY KEY IDENTITY(1,1),
    book_ID int NOT NULL,
    status varchar(20) NOT NULL,
    library_ID int NOT NULL,
    wear int,
    FOREIGN KEY (book_ID) REFERENCES book(book_ID),
    FOREIGN KEY (library_ID) REFERENCES library(library_ID)
);

CREATE TABLE account (
    account_ID int PRIMARY KEY IDENTITY(1,1),
    name varchar(15) NOT NULL,
    surname varchar(30) NOT NULL,
    status varchar(10) NOT NULL,
    login varchar(20) NOT NULL,
    password varchar(20) NOT NULL,
    type varchar(20) NOT NULL,
    index_PW varchar(6),
    rentals int,
    phone_number phone_number NOT NULL,
    email varchar(40) NOT NULL,
);

CREATE TABLE book_order (
    order_ID int PRIMARY KEY IDENTITY(1,1),
    piece_ID int NOT NULL,
    account_ID int NOT NULL,
    date date NOT NULL,
    pickup_time time NOT NULL,
    FOREIGN KEY (piece_ID) REFERENCES piece(piece_ID),
    FOREIGN KEY (account_ID) REFERENCES account(account_ID)
);

CREATE TABLE rental (
    rental_ID int PRIMARY KEY IDENTITY(1,1),
    order_ID int NOT NULL,
    piece_ID int NOT NULL,
    rental_date date NOT NULL,
    rental_time time NOT NULL,
    return_date date NOT NULL,
    FOREIGN KEY (order_ID) REFERENCES book_order(order_ID),
    FOREIGN KEY (piece_ID) REFERENCES piece(piece_ID)
);

CREATE TABLE extension (
    extension_ID int PRIMARY KEY IDENTITY(1,1),
    rental_ID int,
    type varchar(15),
    time time,
    FOREIGN KEY (rental_ID) REFERENCES rental(rental_ID)
);

ALTER TABLE rental ADD extension_ID int NOT NULL;
ALTER TABLE rental ADD FOREIGN KEY (extension_ID) REFERENCES extension(extension_ID)

CREATE TABLE notification (
    notification_ID int PRIMARY KEY IDENTITY(1,1),
    extension_ID int NOT NULL,
    content varchar(200) NOT NULL,
    type varchar(15),
    account_ID int NOT NULL,
    FOREIGN KEY (extension_ID) REFERENCES extension(extension_ID),
    FOREIGN KEY (account_ID) REFERENCES account(account_ID)
);

CREATE TABLE config (
    config_ID int PRIMARY KEY IDENTITY(1,1),
    config_key varchar(30) NOT NULL,
    value int NOT NULL,
    modification_date date NOT NULL,
    add_date date NOT NULL
);

CREATE VIEW Books_titles AS
SELECT title
FROM book