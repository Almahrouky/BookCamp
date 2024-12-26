create database Library_Management_System;

use Library_Management_System;

-- creating the tables
create table user(
    id int auto_increment,
    username varchar(20) not null unique,
    password varchar(20) not null,
    type enum('owner', 'admin', 'normal') not null,
    primary key (id)
);

create table book(
    id int auto_increment,
    ISBN varchar(20),
    book_name varchar(20) not null,
    author_name varchar(20),
    publication_year year,
    copies int not null,
    primary key (id)
);

create table borrowed_books (
    user_id int not null,
    username varchar(20) not null,
    book_id int not null,
    status enum('borrowed', 'returned') not null
);

-- creating the indexes
create index userIndex
on user (username, password, type);

create index bookIndex
on book (ISBN, book_name, author_name, publication_year, copies);

create index borrowedIndex
on borrowed_books (user_id, username, book_id, status);