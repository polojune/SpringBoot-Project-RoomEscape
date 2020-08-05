### MySQL DB 및 사용자 생성 
```sql 

create user 'roomescape'@'%' identified by 'room1234';
GRANT ALL PRIVILEGES ON *.* TO 'roomescape'@'%';
create database roomescape;
use roomescape;



```

```sql

CREATE TABLE user(
	id int auto_increment primary key,
    username varchar(100) unique not null,
    password varchar(100),
    email varchar(100),
    profile varchar(200),
    provider varchar(100),
    providerId varchar(100),
    role varchar(20),
    createDate timestamp
) engine=InnoDB default charset=utf8;



```