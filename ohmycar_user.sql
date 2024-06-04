-- ȸ�� ���̺� ����
create table user_tbl(
      userid varchar2(50) not null primary key,   -- ȸ�����̵�
      username varchar2(50) not null,  -- ȸ���̸�(�Ǹ�)
      password varchar2(100) not null, -- ȸ����й�ȣ
      email varchar2(50) not null,   -- ȸ���̸���(api ���� primary key�� �޾ƿ;���)
      nickname varchar2(50),-- ȸ���г��� (�Խ��� �̿�� ���)
      enabled char(1) default '1');  -- ȸ���� ���� Ȱ��ȭ ����, �⺻�� 1��� 0��Ȱ��ȭ
      
-- ȸ�� ���� ���̺� ����
create table user_auth_tbl (
     userid varchar2(50) not null,  -- ȸ�� ���̵�
     auth varchar2(50) not null,  -- ȸ�� ����
     constraint fk_user_auth foreign key(userid) references user_tbl(userid) 
     -- �ܷ� Ű ���� �������� user_tbl�� username(pk)�� ������
);

-- �ڵ��α��� ���̺� ���� remember-me
create table persistent_logins(
    username varchar2(64) not null, -- username => userId
    series varchar2(64) primary key,
    token varchar2(64) not null,
    last_used timestamp not null
    );


-- ���̺� Ȯ��
DESC user_tbl;
DESC user_auth_tbl;
DESC persistent_logins;


-- ��� ȸ�� ��ȸ
select * from user_tbl;
select * from user_auth_tbl;
select * from persistent_logins;

commit;

rollback;

--TEST
SELECT * FROM user_tbl WHERE email = 'admin@mail.com';
DELETE FROM persistent_logins WHERE username = "admin"; -- username=userId 
DELETE FROM user_auth_tbl WHERE userid='admin'; -- ���� ��������
DELETE FROM user_tbl WHERE userid='admin';
UPDATE user_tbl SET password='1234';


--  user_tbl�� user_auth_tbl join �ش� ���̵�ȸ�� ����
SELECT us.userid,username,password,email,nickname,enabled,auth.auth
FROM  user_tbl us LEFT OUTER JOIN user_auth_tbl auth ON us.userid = auth.userid
WHERE us.userid='useruser';

-- user_tbl�� user_auth_tbl join ��� ȸ���� ����
SELECT  us.userid,username,password,email,nickname,enabled,auth.auth
FROM user_tbl us LEFT OUTER JOIN user_auth_tbl auth ON us.userid=auth.userid;

-- Login
SELECT * FROM user_tbl WHERE  password='1234';
SELECT password FROM user_tbl WHERE  userid='user1';

-- ���̺� ����
drop table user_tbl;
drop table user_auth_tbl;
drop table persistent_logins;
