-- 같은 명령을 받으면 둘 중 하나만 돌아갈 가능성이 존재하는 테스트 테이블
create table tbl_test1( col1 varchar2(50));
create table tbl_test2( col2 varchar2(5));

drop table tbl_test1;

SELECT * FROM tbl_test1;
SELECT * FROM tbl_test2;
