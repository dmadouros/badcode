create table customers
(
    is_vip boolean,
    email  text
);

create table items
(
    price decimal,
    name text
);

create table orders
(
    customer_name text,
    items text,
    total decimal
);

create table inventory
(
    quantity integer,
    item     text
);

insert into customers values (true, 'bilbo@example.com');
insert into customers values (false, 'frodo@example.com');
insert into items values (97.99, 'ring');
insert into items values (47.99, 'cloak');
insert into inventory values (1, 'ring');
insert into inventory values (10, 'cloak');