
-- ������ ����
create sequence seq_board;

drop sequence seq_board;

-- �Խ��� ���̺� ����
create table tbl_board (
    bno number(10,0),          -- �Խù� ��ȣ, 10�ڸ� ����
    title varchar2(200) not null,  -- ����, �ִ� 200�� ���ڿ�, ��� ���� �� ����
    content varchar2(2000) not null,  -- ����, �ִ� 2000�� ���ڿ�, ��� ���� �� ����
    writer varchar2(50) not null,  -- �ۼ���, �ִ� 50�� ���ڿ�, ��� ���� �� ����
    regdate date default sysdate,  -- ��û����, �⺻������ ���� ��¥ ���
    updatedate date default sysdate  -- ������Ʈ����, �⺻������ ���� ��¥ ���
);

-- �Խ��� ���̺� �⺻Ű ���� �߰�
alter table tbl_board add constraint pk_board primary key(bno);

-- Oracle���� ���̺� ���� Ȯ��
DESCRIBE tbl_board;

-- Oracle���� ���̺� ���� Ȯ��2
SELECT column_name, data_type, nullable
FROM user_tab_columns
WHERE table_name = 'TBL_BOARD';

-- ���� ������ �߰�
insert into tbl_board(bno, title, content, writer)
values (seq_board.nextval, '�׽�Ʈ ����', '�׽�Ʈ ����', 'user00');

-- ������ ���� �� �׻� commit
commit;

--  ���̺� Ȯ��
SELECT * FROM tbl_board;-- ���� Ȯ��
select * from tbl_board where bno >  0;

-- �������� ����
SELECT * FROM tbl_board ORDER BY bno;

--  �������� ����
SELECT * FROM tbl_board ORDER BY bno DESC;

-- ���̺� ����
drop table tbl_board;
drop table board;

CREATE SEQUENCE seq_board
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE;


