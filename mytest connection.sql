CREATE SEQUENCE board_num;

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
                  
  SELECT *  FROM board_tbl;
  -- commit 구문을 실행해야 비로소 데이터가 박제됨
  commit;