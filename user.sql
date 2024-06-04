-- ������ ����
create sequence seq_board;

drop sequence seq_board;


-- �Խ��� ���̺� ����
-- ȸ�� ���̺� ����
create table user_tbl(
      userid varchar2(50) not null primary key,   -- ȸ�����̵�
      username varchar2(50) not null,  -- ȸ���̸�(�Ǹ�)
      password varchar2(100) not null, -- ȸ����й�ȣ
      email varchar2(50) not null,   -- ȸ���̸���(api ���� primary key�� �޾ƿ;���)
      nickname varchar2(50),-- ȸ���г��� (�Խ��� �̿�� ���)
      enabled char(1) default '1');  -- ȸ���� ���� Ȱ��ȭ ����, �⺻�� 1���
      
-- ȸ�� ���� ���̺� ����
create table user_auth_tbl (
     userid varchar2(50) not null,  -- ȸ�� ���̵�
     auth varchar2(50) not null,  -- ȸ�� ����
     constraint fk_user_auth foreign key(userid) references user_tbl(userid) 
     -- �ܷ� Ű ���� �������� user_tbl�� username(pk)�� ������
);

INSERT INTO user_auth_tbl (userId, username, password, email, nickname, enabled)
VALUES ( 'user123', 'John Doe', 'password123', 'john@example.com', 'johndoe', 'Y');



CREATE SEQUENCE nextvar_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCYCLE;

GRANT SELECT ON nextvar_seq TO your_user;


-- �Խ��� ���̺� �⺻Ű ���� �߰�
alter table mypage_tbl add constraint pk_board primary key(userId);

ALTER TABLE mypage_tbl DROP CONSTRAINT pk_board;


-- Oracle���� ���̺� ���� Ȯ��
DESCRIBE mypage_tbl;

-- Oracle���� ���̺� ���� Ȯ��2
SELECT column_name, data_type, nullable
FROM user_tab_columns
WHERE table_name = 'TBL_BOARD';

-- ���� ������ �߰�
insert into mypage_tbl(userNum, userId, carId, carSellName, carName, carType)
values (seq_board.nextval ,'02', 'EA12245', 'genesis', 'gv70', '4WD');

-- ������ ���� �� �׻� commit
commit;

--  ���̺� Ȯ��
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

-- �������� ����
SELECT * FROM mypage_tbl ORDER BY userNum;

--  �������� ����
SELECT * FROM mypage_tbl ORDER BY username DESC;

-- ���̺� ����
drop table mypage_tbl;

drop table user_tbl;

drop table user_auth_tbl;

-- ���� Ȯ��
select * from user_tbl; 

SELECT * FROM DBA_TAB_PRIVS WHERE table_name = 'mypage_tbl';


localhost sqlâ���� �����

-- ����� ������ �����̸� book_ex
-- IDENTIFIED BY �ڿ� �н����� ����
-- �⺻ ���̺� �����̽��� USERS ����
-- �ӽ� ���̺� �����̽��� TEMP
CREATE USER oh_my_car IDENTIFIED BY 1234
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- GRANT�� ����ڿ��� ���ӱ��Ѱ� DBA������ �ο�
GRANT CONNECT, DBA TO oh_my_car;
