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

-- select * from authors;
-- select * from quotes;

select authors.first_name,
       authors.last_name,
       quotes.content
from quotes
join authors on quotes.author_id = authors.id;

-- select * from authors where first_name = 'Dogulas';
-- update authors set first_name = 'Douglas' where id = 1;

CREATE TABLE topics (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
('Space and Time'),
('Humor'),
('Office Life'),
('Hitchiker''s Guide to the Galaxy');

CREATE TABLE quote_topic (
     quote_id INTEGER UNSIGNED NOT NULL,
     topic_id INTEGER UNSIGNED NOT NULL,
     FOREIGN KEY (quote_id) REFERENCES quotes(id),
     FOREIGN KEY (topic_id) REFERENCES topics(id)
);

INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 2), (1, 3), (2, 4), (3, 1),
       (3, 2), (3, 3), (3, 4), (4, 2), (5, 1);

select content, t.name from quotes
join quote_topic qt on quotes.id = qt.quote_id
join topics t on qt.topic_id = t.id;