-- ������ ����
create sequence seq_board;

drop sequence seq_board;


-- �Խ��� ���̺� ����
create table car_tbl (
    userId varchar2(50) not null,  
    carId varchar2(50) not null, 
    carSellName varchar2(50) not null,  
    carName varchar2(50) not null, 
    carType varchar2 (10) not null,
    constraint fk_car_tbl foreign key(userid) references user_tbl(userid) 
     -- �ܷ� Ű ���� �������� user_tbl�� username(pk)�� ������
);

-- �Խ��� ���̺� �⺻Ű ���� �߰�

alter table car_tbl add constraint pk_board primary key(userId);




-- Oracle���� ���̺� ���� Ȯ��

DESCRIBE car_tbl;
-- Oracle���� ���̺� ���� Ȯ��2
SELECT column_name, data_type, nullable
FROM user_tab_columns
WHERE table_name = 'TBL_BOARD';

-- ���� ������ �߰�
insert into car_tbl(userId, carId, carSellName, carName, carType)
values ('user101', 'EA12245', 'genesis', 'gv70', '4WD');

-- ������ ���� �� �׻� commit
commit;

--  ���̺� Ȯ��

SELECT * FROM car_tbl;


-- ���̺� ����
drop table car_tbl;
-- ���� Ȯ��
select * from car_tbl where userId>  0;

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
