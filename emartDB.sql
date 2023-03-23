--Database Name
emart
--schema created
SHOW search_path
--for delete column type is created
create type role as enum('user','admin','seller');
create type is_active as enum('yes','no');
--users main table created
create table users (user_id int GENERATED ALWAYS AS IDENTITY primary key ,
  full_name varchar(255) not null,
  email text not null unique,
  password text not null ,
  role role Default 'user',
  user-status is_active Default 'yes',
  );