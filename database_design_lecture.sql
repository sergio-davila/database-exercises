use codeup_test_db

drop table if exists quotes;
drop table if exists authors;
create table authors (
    id int unsigned not null auto_increment,
    first_name varchar(100) not null default 'none',
    last_name varchar(100) not null,
    primary key (id)
);

insert into authors(first_name, last_name) values
('Douglas', 'Adams'),
('Mark', 'Twain'),
('Kurt', 'Vonnegut');

create table quotes (
    id int unsigned not null auto_increment,
    content text not null,
    author_id int unsigned not null,
    primary key (id),
    foreign key (author_id) references authors (id)
);

INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'I love deadlines. I love the whooshing noise they make as they go by.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'Time is an illusion. Lunchtime doubly so.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Mark' and last_name = 'Twain'),
        'Clothes make the man. Naked people have little or no influence on society.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Kurt' and last_name = 'Vonnegut'),
        'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'), 'Don''t Panic.');
