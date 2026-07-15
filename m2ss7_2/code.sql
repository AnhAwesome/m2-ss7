create table customers (
    customer_id int auto_increment,
    customer_name varchar(100) not null,
    primary key (customer_id)
);

create table orders (
    order_id int auto_increment,
    order_date date not null,
    customer_id int not null,
    primary key (order_id),
    foreign key (customer_id) references customers(customer_id)
);

create view v_order_info as 
select o.order_id, o.order_date, c.customer_name 
from orders o 
join customers c on o.customer_id = c.customer_id;
