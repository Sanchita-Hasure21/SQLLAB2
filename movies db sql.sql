create database MoviesDB ; 
use MoviesDB ;
create table Directors ( director_id INT PRIMARY KEY , first_name varchar (50), last_name varchar (50) , 
birthDate DATE, nationality varchar (100) ); 
create table Movies ( movie_id INT PRIMARY KEY ,title varchar (50) , release_year int ,duration int , ratings DECIMAL (3,1),
Language varchar (50) , director_id int , FOREIGN KEY (director_id) REFERENCES Directors(director_id));
create table Actors ( actor_id INT PRIMARY KEY , actor_name varchar (50) , Age int , nationality varchar ( 50 ));
create table Genres ( genre_id INT PRIMARY KEY , genre_name varchar ( 50) ) ; 
create table Movie_cast ( cast_id INT PRIMARY KEY , movie_id int , actor_id int ,role_name varchar (100), 
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
FOREIGN KEY (actor_id) REFERENCES Actors(actor_id) );
create table Movie_genre (movie_genre_id INT PRIMARY KEY , movie_id int, genre_id int , 
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) ,
FOREIGN KEY (genre_id) REFERENCES Genres(genre_id) );
create table Customers( customer_id INT PRIMARY KEY , customer_name varchar (20) , email varchar (50) ) ;
create table Bookings (booking_id INT PRIMARY KEY , customer_id int , movie_id int , booking_Date DATE ,
seats int , FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) );
create table Reviews( review_id INT PRIMARY KEY , movie_id int , customer_id int , rating int , Comment varchar (100),
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) ,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) );
describe Movies ;
describe Movie_genre ;
describe Reviews ;
 

