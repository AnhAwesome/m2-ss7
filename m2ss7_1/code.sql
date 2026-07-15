create table students (
    student_id varchar(20),
    full_name varchar(100) not null,
    birth_year int not null,
    class_name varchar(50) not null,
    address varchar(255),
    primary key (student_id)
);

create view v_student_basic as 
select student_id, full_name, class_name 
from students;
