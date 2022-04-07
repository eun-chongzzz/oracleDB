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
                  (board_num.nextval,'�׽�Ʈ��','�׽�Ʈ����','�۾���');
                  
SELECT *  FROM board_tbl ORDER BY bno DESC;

DELETE FROM board_tbl WHERE bno = 24;

UPDATE board_tbl SET title = '���γִ±�(����)', content = '����(����)', updatedate = sysdate WHERE bno = 21;

  
 