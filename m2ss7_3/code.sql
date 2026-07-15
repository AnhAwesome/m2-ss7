create table employees (
    emp_id int auto_increment,
    full_name varchar(100) not null,
    department varchar(50) not null,
    salary decimal(15, 2) not null,
    primary key (emp_id)
);

create index idx_department on employees (department);
