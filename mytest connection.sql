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
                  (board_num.nextval,'대현이의글','대현이가쓴글','대현');
                  
SELECT * FROM board_tbl;

SELECT
/*+ INDEX_ASC(board_tbl pk_board) */
ROWNUM,ROWID,board_tbl. * FROM board_tbl where bno between 196598 and 196608;

-- 글복사--
INSERT INTO board_tbl (bno, title, content, writer)
(select board_num.nextval, title, content, writer from board_tbl);

-- 페이지네이션 구문
SELECT /*+ INDEX_DESC(board_tbl pk_board) */
ROWNUM rn, board_tbl.* FROM board_tbl WHERE rownum <= 20; 

SELECT * FROM
(SELECT /*+ INDEX_DESC(board_tbl pk_board) */
ROWNUM rn, board_tbl.* FROM board_tbl WHERE rownum <= 20)
WHERE rn > 10;

-- 전체 글 갯수
SELECT COUNT(*) FROM board_tbl;

SELECT * FROM
        	(SELECT /*+ INDEX_DESC(board_tbl pk_board) */
            ROWNUM rn, board_tbl.* FROM board_tbl WHERE 
             (Title like '%'||'테'||'%') AND
              ROWNUM <= 20)
            	WHERE rn > 10 ;

SELECT COUNT(*) FROM board_tbl where (Title like '%'||'테'||'%');

SELECT COUNT(*) FROM board_tbl WHERE bno > 0;
 
 
-- 댓글 테이블
CREATE table reply_tbl(
  rno number(10,0),
  bno number(10,0) not null,
  reply varchar2(1000) not null,
  replyer varchar2(50) not null,
  replyDate date default sysdate,
  updateDate date default sysdate
  );
  
create sequence reply_num;

alter table reply_tbl add constraint pk_reply primary key(rno);

alter table reply_tbl add constraint fk_reply foreign key (bno) references board_tbl(bno);

alter sequence reply_num nocache; -- 시퀸스 20씩 튀는 문제 해결

select * from reply_tbl;

select * from reply_tbl where bno = 196636;

DELETE FROM reply_tbl WHERE rno = 38;