-- 시퀀스 생성
create sequence seq_board;

drop sequence seq_board;


-- 게시판 테이블 생성
create table car_tbl (
    userId varchar2(50) not null,  
    carId varchar2(50) not null, 
    carSellName varchar2(50) not null,  
    carName varchar2(50) not null, 
    carType varchar2 (10) not null,
    constraint fk_car_tbl foreign key(userid) references user_tbl(userid) 
     -- 외래 키 제약 조건으로 user_tbl의 username(pk)를 참조함
);

-- 게시판 테이블에 기본키 제약 추가

alter table car_tbl add constraint pk_board primary key(userId);




-- Oracle에서 테이블 구조 확인

DESCRIBE car_tbl;
-- Oracle에서 테이블 구조 확인2
SELECT column_name, data_type, nullable
FROM user_tab_columns
WHERE table_name = 'TBL_BOARD';

-- 더미 데이터 추가
insert into car_tbl(userId, carId, carSellName, carName, carType)
values ('user101', 'EA12245', 'genesis', 'gv70', '4WD');

-- 데이터 가공 후 항상 commit
commit;

--  테이블 확인

SELECT * FROM car_tbl;


-- 테이블 삭제
drop table car_tbl;
-- 쿼리 확인
select * from car_tbl where userId>  0;

SELECT * FROM DBA_TAB_PRIVS WHERE table_name = 'mypage_tbl';


localhost sql창에서 만들기

-- 사용자 생성시 계정이름 book_ex
-- IDENTIFIED BY 뒤에 패스워드 지정
-- 기본 테이블 스페이스는 USERS 지정
-- 임시 테이블 스페이스는 TEMP
CREATE USER oh_my_car IDENTIFIED BY 1234
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- GRANT로 사용자에게 접속권한과 DBA권한을 부여
GRANT CONNECT, DBA TO oh_my_car;
