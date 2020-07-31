### MySQL DB 및 사용자 생성 
```sql 

create user 'roomescape'@'%' identified by 'room1234';
GRANT ALL PRIVILEGES ON *.* TO 'roomescape'@'%';
create database roomescape;
use roomescape;



```