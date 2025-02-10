# BookCamp
## Overview
BookCamp is a `GUI` library management system for managing and controlling library users and books.  
Implemented role-based access control for `owner`, `administrators`, and `normal users`.  
Designed a `database` to store, manage, and retrieve large amounts of data.  
Enhanced database security by preventing the `SQL injection attacks`.  
## Demo
[Demo Video](https://drive.google.com/file/d/1YpiOGAqlh7Bqn8FOjZsC8EMSHH_-dL2D/view?usp=sharing)
## Features
- Graphical-User-Interface (GUI)
- Log In and Sign Up
	- To Sign Up you must create a new unique username.
- Users' privileges to control the actions made on the library.
- Admin privileges
	- Add a new book, show normal users show their transactions, and delete a normal user.
- Owner privilege
	- statushow all users beside the privileges of the admin user.
- Book management
	- Show available books, borrow a book, and return a book.
## Database
### Scope
- The purpose of this database is to store, manage and, retrieve large amounts of data.
### Functional Requirements
- A normal user can see the available books, search in them, borrow a book, and return a book.
#### Entities
For this database, I've chosen the following entities and their attributes:
##### 1- user
- id (primary key, auto_increment, int)
- username (not null, unique, varchar(20))
- password (not null, varchar(20))
- type (not null, enum('owner', 'admin', 'normal'))
##### 2-book
- id (primary key, auto_increment, int)
- ISBN (varchar(20))
- book_name (not null, varchar(20))
- author_name (varchar(20))
- publication_year (year)
- copies (not null, int)
##### 3-borrowed_books
- user_id (not null, int)
- username (not null, varchar(20))
- book_id (not null, int)
- status (not null, enum('borrowed', 'returned'))
##### For this database, I used the types:
- int: to represent the whole numbers such as id and copies.
- varchar(20): to represent names such as username, book_name, and password.
##### And also used constraints:
- primary key: for the id to be unique for each row in the table.
- auto_increment: to automatically give the new row a unique number specifically it increments the number by one for every new row.
- unique: for username.
- not null: for username, password, and type to avoid wrong login and for ISBN, book_name, and copies to identify the book, etc.
#### Relationships
![ER Diagram](images/ER%20Diagram.png)
- The relationship between the user and the book is that the user can borrow zero or more books and the user can return zero or more books.
- The relationship between book and user is that a book can be borrowed by one user and a book can be returned by one user. 
#### Optimizations
- indexing: for username, password, type, ISBN, etc. to improve these queries performance.
## Technologies Used
- Java as a programming language.
- Java Swing for the GUI.
- MySQL for the database.