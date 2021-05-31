use codeup_test_db;

drop table if exists users;
create table users (
   id int unsigned auto_increment,
   username varchar(100) not null,
   email varchar(100) not null,
   password varchar(50) not null,
   primary key (id)
);

insert into users(username, email, password)
values('victorhernandez', 'victor@jpmorgan.com', 'asdfghjkl'),
      ('sergio', 'sergio@jpmorgan.com', '123456');

drop table if exists ads;
create table ads (
     id int unsigned auto_increment,
     title varchar(150) not null,
     description text not null,
     category varchar(100) not null,
     primary key (id),
     users_id int unsigned not null,
     foreign key (users_id) references users (id)
);

drop table if exists categories;
create table categories (
    id int unsigned auto_increment,
    category varchar(100) not null,
    primary key (id),
    ads_id int unsigned not null,
    foreign key (ads) references ads (id)
)

-- truncate ads;
insert into ads(title, description, category, users_id)
values('Selling laptop', 'Slightly used. $25 ', 'electronics', 1),
      ('Selling pots and pans', 'New pots and pans. Call for price', 'kitchen', 1),
      ('Selling chair', 'Slightly used. $25 ', 'furniture', 2),
      ('Selling plates and ', 'Used plates. Call for price', 'kitchen', 2),
      ('Selling a kennel', 'Extremely small, slightly used. $20', 'pets', 1),
      ('Selling Selena collector''s cup from limited HEB line', 'Brand new, still in original box. $100', 'kitchen', 2),
      ('Selling TV', '19 cm tv, black and white. Forsmall pets. Call for price, serious inquiries only.', 'electronics', 1);

-- 1. Email query
select email from ads join users u on ads.users_id = u.id where ads.id = 6;

-- 2. Category query
select category from ads join users u on ads.users_id = u.id where ads.id = 4;

-- 3. Single category query
select distinct category, title, description from ads join users u on ads.users_id = u.id where category = 'kitchen';

-- 4. user ads posted query
select title, description, category, username
from ads
         join users
              on users_id = users.id
WHERE users_id = 1;