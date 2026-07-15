create table products (
    product_id int auto_increment,
    product_name varchar(100) not null,
    category varchar(50) not null,
    price decimal(15, 2) not null,
    primary key (product_id)
);

create index idx_category_price on products (category, price);
