create table orders (
    order_id int auto_increment,
    order_date date not null,
    status varchar(50) not null,
    total_amount decimal(15, 2) not null,
    primary key (order_id)
);

create index idx_search_status_date on orders (status, order_date);
