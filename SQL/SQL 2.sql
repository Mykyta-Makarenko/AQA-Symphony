--Table 1: Movies
Create TABLE Movies (
	MovieID int NOT NULL,
	Title varchar(255),
	ReleaseYear int NOT NULL,
	DurationMovies int NOT NULL,
	Primary Key (MovieID) 
);

--Table 2: Cinema Halls 
Create TABLE CinemaHalls (
	HallID int NOT NULL,
	HallName varchar(255),
	Seating Capacity int,
	PRIMARY KEY (HallID) 
);

--Table 3: Showtimes 
Create TABLE Showtimes (
	ShowtimeID int NOT NULL,
	MovieID int NOT NULL,
	HallID int NOT NULL, 
	ShowtimeDateTime timestamp,
	TicketPrice int, 
	PRIMARY KEY (ShowtimeID),
	FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
	FOREIGN KEY (HallID) REFERENCES CinemaHalls(HallID)
);


--Table 4: Tickets 
Create TABLE Tickets (
	TicketID int NOT NULL,
	ShowtimeID int NOT NULL,
	SeatNumber int NOT NULL,
	CustomerName varchar(255),
	PurchaseDateTime timestamp,
	Primary Key (TicketID), 
	FOREIGN KEY (ShowtimeID) REFERENCES Showtimes(ShowtimeID)
);

-- Seed data into this table (INSERT)
INSERT INTO Movies (MovieID, Title, ReleaseYear, DurationMovies)
VALUES 
('228', 'Drive', '2011', '100'), 
('1337', 'Interstellar', '2013', '169');

-- Update raw
UPDATE Movies
SET ReleaseYear = 2014
WHERE MovieID = 228;

-- Delete raw 
Delete FROM Movies 
WHERE MovieID = 228;
