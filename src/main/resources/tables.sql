# 建立表

# 出票记录表
	create table if not exists ticket_order(
	id int(10) primary key,
	user_id int(10) ,
	flight_id int(8),
	ID_number varchar(18),
	order_date timestamp not null,
	classes int(3) not null,
	passenger_type int(3) not null,
	sales_id int(5),
	status int(3) not null,
	tprice double(10,2) not null
);

#营业员表
create table if not exists sales(
	id int(5) primary key auto_increment,
	name varchar(10) not null,
	number varchar(10) not null,
	password varchar(10) not null,
	branch_id int(5) 
);

# 营业点表
create table if not exists branch(
	id int(5) primary key,
	name varchar(40) not null,
	address varchar(50) not null,
	telephone varchar(15),
	province varchar(10)	
);

#管理员表
create table if not exists admin(
	id int(5) primary key auto_increment,
	number varchar(10) not null,
	password varchar(10) not null,
	name varchar(10) not null
);

#用户表
create table if not exists user(
	id int(10) primary key auto_increment,
	phone varchar(15) not null,
	password varchar(10) not null,
	name varchar(10) not null,
	sex varchar(2) not null,
	age date not null,
	address varchar(50) not null
);

# 用户信息表

create table if not exists user_info(
	id int(10) primary key auto_increment,
	ID_number varchar(18) not null,
	name varchar(10) not null,
	user_id int(10)
);

# 机场表
create table if not exists airport(
	airport_code varchar(10) primary key,
	city varchar(20) not null,
	airport_name varchar(20) not null
);

# 飞机机型表

create table if not exists airport_model(
	airplane varchar(10) primary key,
	model varchar(20) not null,
	max_sail_length int(6) not null,
	first_class_seats int(3) not null,
	business_class_seats int(3) not null,
	economy_class_seats int(3) not null
);

# 航班计划表

create table if not exists flight_scheduler(
	flight_number char(6) primary key,
	start_date date not null,
	end_date date not null,
	from_city char(3),
	to_city char(3),
	departure_time date not null,
	arrival_time date not null,
	airplane varchar(20) not null,
	scheduler char(7) not null,
	sail_length int(5) not null
);
# 航班表
create table if not exists flight(
	flight_id int(8) primary key,
	flight_number char(6),
	departure_date date not null,
	first_class_remain_seats int(3) not null,
	business_class_remain_seats int(3) not null,
	economy_class_remain_seats int(3) not null,
	season_discount double(4,2) not null DEFAULT 1.0,
	airport_code varchar(10) not null,
	price double(10,2) not null
);