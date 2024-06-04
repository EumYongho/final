CREATE TABLE comments (
    id NUMBER PRIMARY KEY,
    bno NUMBER NOT NULL,
    content VARCHAR2(1000) NOT NULL,
    writer VARCHAR2(50) NOT NULL,
    regDate DATE DEFAULT SYSDATE,
    updateDate DATE DEFAULT SYSDATE
);

-- 시퀀스 생성 (Auto Increment)
CREATE SEQUENCE comment_seq START WITH 1 INCREMENT BY 1;


-- 게시글 테이블과의 외래키 관계 설정 (bno는 게시글의 기본키를 참조)
ALTER TABLE comments
ADD CONSTRAINT fk_board
FOREIGN KEY (bno) REFERENCES board(bno);

CREATE SEQUENCE comments_seq
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE;

CREATE OR REPLACE TRIGGER comments_trigger
BEFORE INSERT ON comments
FOR EACH ROW
BEGIN
  SELECT comments_seq.NEXTVAL INTO :new.id FROM dual;
END;
/

commit;

SELECT * FROM COMMENTS;


