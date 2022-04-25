CREATE SEQUENCE board_num;
alter sequence board_num nocache; -- �������� 20�� ���� �ذ�
commit;
 -- commit ������ �����ؾ� ��μ� �����Ͱ� ������

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
                  (board_num.nextval,'�������Ǳ�','�����̰�����','����');
                  
SELECT * FROM board_tbl;

SELECT
/*+ INDEX_ASC(board_tbl pk_board) */
ROWNUM,ROWID,board_tbl. * FROM board_tbl where bno between 196598 and 196608;

-- �ۺ���--
INSERT INTO board_tbl (bno, title, content, writer)
(select board_num.nextval, title, content, writer from board_tbl);

-- ���������̼� ����
SELECT /*+ INDEX_DESC(board_tbl pk_board) */
ROWNUM rn, board_tbl.* FROM board_tbl WHERE rownum <= 20; 

SELECT * FROM
(SELECT /*+ INDEX_DESC(board_tbl pk_board) */
ROWNUM rn, board_tbl.* FROM board_tbl WHERE rownum <= 20)
WHERE rn > 10;

-- ��ü �� ����
SELECT COUNT(*) FROM board_tbl;

SELECT * FROM
        	(SELECT /*+ INDEX_DESC(board_tbl pk_board) */
            ROWNUM rn, board_tbl.* FROM board_tbl WHERE 
             (Title like '%'||'��'||'%') AND
              ROWNUM <= 20)
            	WHERE rn > 10 ;

SELECT COUNT(*) FROM board_tbl where (Title like '%'||'��'||'%');

SELECT COUNT(*) FROM board_tbl WHERE bno > 0;
 
 
-- ��� ���̺�
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

alter sequence reply_num nocache; -- ������ 20�� Ƣ�� ���� �ذ�

select * from reply_tbl;

select * from reply_tbl where bno = 196636;

DELETE FROM reply_tbl WHERE rno = 38;