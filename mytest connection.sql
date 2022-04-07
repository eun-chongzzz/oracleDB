CREATE SEQUENCE board_num;

alter sequence board_num nocache; -- 시퀀스가 20씩 증가 해결
  
commit;
 -- commit 구문을 실행해야 비로소 데이터가 박제됨

CREATE TABLE board_tbl (
  bno number(10, 0),
  title varchar2(200) not null,
  content varchar2(2000) not null,
  writer varchar2(50) not null,
  regdate date default sysdate,
  updatedate date default sysdate
  );
  
  alter table board_tbl add constraint pk_board primary key(bno);
  

INSERT INTO board_tbl (bno, title, content, writer) values 
                  (board_num.nextval,'테스트글','테스트본문','글쓴이');
                  
SELECT *  FROM board_tbl ORDER BY bno DESC;

DELETE FROM board_tbl WHERE bno = 24;

UPDATE board_tbl SET title = '새로넣는글(수정)', content = '본문(수정)', updatedate = sysdate WHERE bno = 21;

  
 