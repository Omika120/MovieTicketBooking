create database moviebookingData;
use moviebookingData;

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(255) NOT NULL,              
    phone VARCHAR(15) NOT NULL               
);

CREATE TABLE Movie (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,  
    movie_name VARCHAR(255) NOT NULL,         
    timings VARCHAR(255) NOT NULL,            
    available_seats INT NOT NULL,             
    ticket_price DOUBLE NOT NULL             
);

CREATE TABLE Booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,  
    user_id INT,                                
    movie_id INT,                               
    number_of_seats INT NOT NULL,               
    FOREIGN KEY (user_id) REFERENCES User(user_id),  
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)  
);

select * from user;
select * from movie;
select * from booking;










