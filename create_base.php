<?php

$conn = mysqli_connect("localhost","root","sale2812","imenik");
//kreiranje tabele imena, imamo 3 kolone, kolona user_id je primarni kljuc, naredbom engine odredjujemo tip tabele
mysqli_query($conn,"create table imena(user_id int primary key unique not null auto_increment,ime varchar(30) not null,prezime varchar(30) not null)engine=InnoDB");
//kreiranje tabele adrese,kolona a_id je primarni kljuc, a kolona user_id je spoljni kljuc, koristili smo opciju cascade sto znaci da ce brisanjem ili updateovanjem slogova u tabeli imena rezultovati brisanjem ili updateovanjem slogova u tabeli adrese
//slogova koji referenciraju na njih u tabeli adrese
mysqli_query($conn,"create table adrese(a_id int primary key unique not null auto_increment,user_id int not null,grad varchar(30),ulica_br varchar(50),foreign key(user_id)references imena
(user_id) on delete cascade on update cascade)engine=InnoDB");
mysqli_query($conn,"create table podaci(p_id int primary key unique not null auto_increment,user_id int not null,email varchar(100),mob_tel int not null,fix_tel int,foreign key(user_id)references imena(user_id) on delete cascade on update cascade)engine=InnoDB");

