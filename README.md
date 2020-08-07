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

```sql

CREATE TABLE store(
	id int auto_increment primary key,
    intro varchar(50) not null,
    name varchar(50) not null , 
    info varchar(100), 
    homepage varchar(100),
    storeImg varchar(200),
    mapLong double,
    mapLat double,
    createDate timestamp
    
) engine=InnoDB default charset=utf8;



```

```sql

CREATE TABLE theme(
	id int auto_increment primary key,
    intro varchar(50) not null,
    name varchar(50) not null , 
	genre varchar(50),
    level int,
    rating int,
    storeId int,
    themeImg varchar(200),
    timeLimit varchar(50),   
    createDate timestamp,
 foreign key (storeId) references store (id) on delete set null   
) engine=InnoDB default charset=utf8;


```

```sql

insert into store(intro,name,info,homepage,mapLong,mapLat,createDate) values('포인트나인','포인트나인','서울강남구역삼동','www.aa.co.kr',0.0,0.0,now());
insert into store(intro,name,info,homepage,mapLong,mapLat,createDate) values('더큐 이스케이프','더큐 이스케이프','대전 서구','www.b.co.kr',0.1,0.2,now());
insert into store(intro,name,info,homepage,mapLong,mapLat,createDate) values('코드네임블랙','코드네임블랙','부산 남포동','www.c.co.kr',0.3,0.3,now());
insert into store(intro,name,info,homepage,mapLong,mapLat,createDate) values('솔버','솔버','서울광진구','www.d.co.kr',0.4,0.4,now());
insert into store(intro,name,info,homepage,mapLong,mapLat,createDate) values('시그널헌터','시그널헌터','경기 화성시','www.e.co.kr',0.5,0.5,now());


```
