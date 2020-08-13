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
    rating int,
    homepage varchar(100),
    storeImg varchar(200),
    location varchar(20),
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
CREATE TABLE schedule (
	id int auto_increment primary key,
    themeId int,
    startTime timestamp,
    available boolean,
 foreign key (themeId) references theme (id) on delete set null 
) engine=InnoDB default charset=utf8;



CREATE TABLE review(
	id int auto_increment primary key,
    userId int not null,
    storeId int,
    themeId int,
    content varchar(500),
    rating int,
    createDate timestamp,
    foreign key (storeId) references store (id) on delete set null,
    foreign key (themeId) references theme (id) on delete set null 
) engine=InnoDB default charset=utf8;


```

```sql

insert into store(intro,name,info,rating,homepage,storeImg,mapLong,mapLat,createDate) values('포인트나인','포인트나인','서울강남구역삼동',8,'www.aa.co.kr','/images/store/1.png',0.0,0.0,now());
insert into store(intro,name,info,rating,homepage,storeImg,mapLong,mapLat,createDate) values('더큐 이스케이프','더큐 이스케이프','대전 서구',6,'www.b.co.kr','/images/store/3.png',0.1,0.2,now());
insert into store(intro,name,info,rating,homepage,storeImg,mapLong,mapLat,createDate) values('코드네임블랙','코드네임블랙','부산 남포동',9,'www.c.co.kr','/images/store/4.png',0.3,0.3,now());
insert into store(intro,name,info,rating,homepage,storeImg,mapLong,mapLat,createDate) values('솔버','솔버','서울광진구',7,'www.d.co.kr','/images/store/5.png',0.4,0.4,now());
insert into store(intro,name,info,rating,homepage,storeImg,mapLong,mapLat,createDate) values('시그널헌터','시그널헌터','경기 화성시',9,'www.e.co.kr','/images/store/6.png',0.5,0.5,now());


```
```sql
insert into theme(name,intro,genre,level,timeLimit,rating,storeId,themeImg,createDate) values('올드보이','올드보이','범죄',4,'60분',7,1,'/images/theme/1.png',now());
insert into theme(name,intro,genre,level,timeLimit,rating,storeId,themeImg,createDate) values('의뢰인','의뢰인','추리',3,'70분',6,2,'/images/theme/2.png',now());
insert into theme(name,intro,genre,level,timeLimit,rating,storeId,themeImg,createDate) values('잔혹동화','잔혹동화','범죄',4,'60분',7,3,'/images/theme/3.png',now());
insert into theme(name,intro,genre,level,timeLimit,rating,storeId,themeImg,createDate) values('터널','터널','추리',5,'80분',7,4,'/images/theme/4.png',now());
insert into theme(name,intro,genre,level,timeLimit,rating,storeId,themeImg,createDate) values('파커4','파커4','스릴러',4,'70분',8,5,'/images/theme/5.png',now());

```


```sql
insert into theme(intro,name,genre,level,rating,storeId,createDate) values('비밀의 숲','비밀의 숲','미스테리','5','8','2',now());

insert into schedule(themeId,startTime,available) values('1', '2020-08-15 15:00:00', true);
insert into schedule(themeId,startTime,available) values('1', '2020-08-15 16:00:00', true);
insert into schedule(themeId,startTime,available) values('1', '2020-08-15 17:00:00', true);
insert into schedule(themeId,startTime,available) values('1', '2020-08-15 18:00:00', true);
insert into schedule(themeId,startTime,available) values('1', '2020-08-15 19:00:00', true);
```

```sql
insert into review (userId,storeId,content,rating,createDate) values(3,7,"너무 좋았습니다",7,now());
insert into review (userId,storeId,content,rating,createDate) values(1,5,"너무 좋았습니다",7,now());
insert into review (userId,storeId,content,rating,createDate) values(2,4,"너무 별로에요",4,now());
insert into review (userId,storeId,content,rating,createDate) values(4,3,"좋았습니다",8,now());
insert into review (userId,storeId,content,rating,createDate) values(5,2,"좋아요",6,now());
```