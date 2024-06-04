-- 시퀀스 생성
create sequence seq_board;

drop sequence seq_board;


-- 게시판 테이블 생성
-- 회원 테이블 생성
create table user_tbl(
      userid varchar2(50) not null primary key,   -- 회원아이디
      username varchar2(50) not null,  -- 회원이름(실명)
      password varchar2(100) not null, -- 회원비밀번호
      email varchar2(50) not null,   -- 회원이메일(api 사용시 primary key로 받아와야함)
      nickname varchar2(50),-- 회원닉네임 (게시판 이용시 사용)
      enabled char(1) default '1');  -- 회원의 계정 활성화 여부, 기본값 1사용
      
-- 회원 권한 테이블 생성
create table user_auth_tbl (
     userid varchar2(50) not null,  -- 회원 아이디
     auth varchar2(50) not null,  -- 회원 권한
     constraint fk_user_auth foreign key(userid) references user_tbl(userid) 
     -- 외래 키 제약 조건으로 user_tbl의 username(pk)를 참조함
);

INSERT INTO user_auth_tbl (userId, username, password, email, nickname, enabled)
VALUES ( 'user123', 'John Doe', 'password123', 'john@example.com', 'johndoe', 'Y');



CREATE SEQUENCE nextvar_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCYCLE;

GRANT SELECT ON nextvar_seq TO your_user;


-- 게시판 테이블에 기본키 제약 추가
alter table mypage_tbl add constraint pk_board primary key(userId);

ALTER TABLE mypage_tbl DROP CONSTRAINT pk_board;


-- Oracle에서 테이블 구조 확인
DESCRIBE mypage_tbl;

-- Oracle에서 테이블 구조 확인2
SELECT column_name, data_type, nullable
FROM user_tab_columns
WHERE table_name = 'TBL_BOARD';

-- 더미 데이터 추가
insert into mypage_tbl(userNum, userId, carId, carSellName, carName, carType)
values (seq_board.nextval ,'02', 'EA12245', 'genesis', 'gv70', '4WD');

-- 데이터 가공 후 항상 commit
commit;

--  테이블 확인
SELECT * FROM mypage_tbl;
 SELECT * FROM user_tbl;
  SELECT * FROM user_auth_tbl;
 SELECT * FROM CAR_TBL;
 
 SELECT userid, COUNT(*) 
FROM car_tbl 
GROUP BY userid 
HAVING COUNT(*) > 1;

DELETE FROM car_tbl
WHERE ROWID IN (
    SELECT ROWID FROM (
        SELECT ROWID,
               ROW_NUMBER() OVER (PARTITION BY userid ORDER BY ROWID) AS rnum
        FROM car_tbl
    )
    WHERE rnum > 1
);



 
 DESCRIBE user_tbl;

-- 오름차순 정렬
SELECT * FROM mypage_tbl ORDER BY userNum;

--  내림차순 정렬
SELECT * FROM mypage_tbl ORDER BY username DESC;

-- 테이블 삭제
drop table mypage_tbl;

drop table user_tbl;

drop table user_auth_tbl;

-- 쿼리 확인
select * from user_tbl; 

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
