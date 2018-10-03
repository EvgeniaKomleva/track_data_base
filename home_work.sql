use track;
create table if not exists users (
	user_id int auto_increment,
    login varchar(45),
    reg_dttm timestamp, 
    primary key(user_id)
)engine = InnoDB;     

create table if not exists payment (
	user_id int, 
    payment_id int,
    payment_sum double, 
    payment_dttm timestamp,
    foreign key (user_id) references users(user_id)
) engine = InnoDB;  

create table if not exists sessions (
	user_id int, 
    sessions_id int,
    begin_dttm timestamp DEFAULT '1900-01-01 00:00:01',
    end_dttm timestamp DEFAULT '1970-01-01 00:00:01', 
    foreign key (user_id) references users(user_id)
) engine = InnoDB default charset = utf8;   

LOAD DATA INFILE 'загрузки/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'Загрузки/sessions.csv'
INTO TABLE sessions
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'Загрузки/payment.csv'
INTO TABLE payment
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';
/*SHOW VARIABLES LIKE "secure_file_priv";*/
/*SELECT @@secure_file_priv;*/