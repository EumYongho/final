
-- 시퀀스 생성
create sequence seq_board;

drop sequence seq_board;

-- 게시판 테이블 생성
create table tbl_board (
    bno number(10,0),          -- 게시물 번호, 10자리 정수
    title varchar2(200) not null,  -- 제목, 최대 200자 문자열, 비어 있을 수 없음
    content varchar2(2000) not null,  -- 내용, 최대 2000자 문자열, 비어 있을 수 없음
    writer varchar2(50) not null,  -- 작성자, 최대 50자 문자열, 비어 있을 수 없음
    regdate date default sysdate,  -- 요청일자, 기본값으로 현재 날짜 사용
    updatedate date default sysdate  -- 업데이트일자, 기본값으로 현재 날짜 사용
);

-- 게시판 테이블에 기본키 제약 추가
alter table tbl_board add constraint pk_board primary key(bno);

-- Oracle에서 테이블 구조 확인
DESCRIBE tbl_board;

-- Oracle에서 테이블 구조 확인2
SELECT column_name, data_type, nullable
FROM user_tab_columns
WHERE table_name = 'TBL_BOARD';

-- 더미 데이터 추가
insert into tbl_board(bno, title, content, writer)
values (seq_board.nextval, '테스트 제목', '테스트 내용', 'user00');

-- 데이터 가공 후 항상 commit
commit;

--  테이블 확인
SELECT * FROM tbl_board;-- 쿼리 확인
select * from tbl_board where bno >  0;

-- 오름차순 정렬
SELECT * FROM tbl_board ORDER BY bno;

--  내림차순 정렬
SELECT * FROM tbl_board ORDER BY bno DESC;

-- 테이블 삭제
drop table tbl_board;
drop table board;

CREATE SEQUENCE seq_board
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE;


