-- �ڴ��(����)��
-- auto
CREATE SEQUENCE repl_num;

CREATE TABLE repl_tbl(
  repl_num number(10,0) PRIMARY KEY,
  free_board_num number(10,0) not null,
  repl_content varchar2(1000) not null,
  repl_writer varchar2(50) not null,
  repl_rdate date default sysdate,
  repl_mdate date
);

-- ������ �ذ�
alter sequence repl_num nocache;

-- �ܷ�Ű ����
alter table repl_tbl add constraint fk_repl
  foreign key (free_board_num) references free_board_tbl(free_board_num);