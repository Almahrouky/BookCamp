# Library-Management-System
## Overview
The library management system is a simple application for managing and control library users and books.
The library has powerful privileges for the owner and other privileges for the admins.
The library has a database to store, manage, and retrieve large amounts of data.
The library ensures the security of the database by preventing the SQL injection attacks.
The library has a GUI to make things easy.
## Demo
[![Demo](https://img.youtube.com/vi/F30uIxhR9aI/0.jpg)](https://www.youtube.com/watch?v=F30uIxhR9aI)
Click on the above image to open the video
## Features
- Graphical-User-Interface (GUI)
- log-in and sign-up
- Book management
	- show available books, borrow a book, and return a book.
- users' privileges to control the actions made on the library.
- admin privileges
	- add a new book, show normal users show their transactions, and delete a normal user.
- owner privilege
	- show all users beside the privileges of the admin user.
## Database
### Scope
- The purpose of this database is to store, manage and, retrieve large amounts of data.
### Functional Requirements
- A normal user can see the available books, search in them, borrow a book, and return a book.
#### Entities
For this database, I've chosen the following entities and their attributes:
##### 1- user
- id (primary key, auto_increment, int)
- username (not null, varchar(20))
- password (not null, varchar(20))
- type (not null enum('owner', 'admin', 'normal'))
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
- not null: for username, password, and type to avoid wrong login and for ISBN, book_name, and copies to identify the book, etc.
#### Relationships
![ER Diagram](images/ER%20Diagram.png)
- The relationship between the user and the book is that the user can borrow zero or more books and the user can return zero or more books.
- The relationship between book and user is that a book can be borrowed by one user and a book can be returned by one user. 
#### Optimizations
- indexing: for username, password, type, ISBN, etc. to improve these queries performance.
## Technologies Used
- Java as a programming language.
- Java swing for the GUI.
- MySQL for the database.