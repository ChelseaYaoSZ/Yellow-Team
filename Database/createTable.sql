drop schema if exists balloon_project cascade;
create schema balloon_project;
set search_path to balloon_project;


create table customer
(
    customer_id  integer generated always as identity primary key,
    name         text not null,
    phone_number text not null,
    email        text not null
);

create table request
(
    request_id   integer generated always as identity primary key,
    budget       numeric(8, 2),
    message      text,
    request_date timestamp default now() not null,
    event_date   timestamp default now() not null,
    event_type   text,
    customer_id  integer not null references customer
);

create table address
(
    address_id  integer generated always as identity primary key,
    address     text      not null,
    city        text      not null,
    postal_code text      not null,
    last_update timestamp not null,
    request_id  integer references request
);

create table product
(
    product_id  integer generated always as identity primary key,
    name        text          not null,
    price       numeric(8, 2) not null,
    status      text          not null,
    description text,
    category    text          not null,
    image_url   text,
    request_id  integer references request
);

create table banner
(
    banner_id integer generated always as identity primary key,
    image_url text,
    title     text
);

create table admin
(
    admin_id integer generated always as identity primary key,
    username varchar(8) not null,
    password varchar(8) not null
);


--TRIGGER TO UPDATE THE TIMESTAMP ON LAST_UPDATE AFTER MAKING CHANGES

create function last_updated() returns trigger
    language plpgsql
as
$$
BEGIN
    NEW.last_update = CURRENT_TIMESTAMP;
    RETURN NEW;
END
$$;

CREATE TRIGGER update_address_last_updated
BEFORE UPDATE ON address
FOR EACH ROW
EXECUTE FUNCTION last_updated();

