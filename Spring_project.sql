/* ※ 구문 실행시 주의사항
 1. auto 설정 -> 테이블 생성 -> nocache 실행
  (auto부터 실행해야 auto번호가 1부터 시작됨.)
 2. 일부 테이블 drop시 외래키 잡은 테이블부터 날리기 (전체 날리기 구문 : 밑의 구문 역순)
 3. 테이블 drop을 해도 auto는 살아있음,
   그러므로 drop sequence 'auto설정된값'; 을 해줘야함. (밑에 구문 적어놓음)
*/

-- commit 구문을 실행해야 비로소 데이터가 박제됨
commit;

-- ★유저★
-- auto
CREATE SEQUENCE user_num;

CREATE TABLE user_tbl(
  user_num number(10,0) PRIMARY key,
  user_id varchar2(20) unique,
  user_pw varchar2(20) not null,
  user_name varchar2(10) not null,
  user_pnum varchar2(15) not null,
  user_email varchar2(30) not null,
  user_coin number(10,0) default 0,
  user_coupon number(10,0) default 0,
  user_rdate date default sysdate,
  user_auth_mdate date default sysdate,
  user_enabled char(1) default '1'
  );

-- 시퀀스 해결
alter sequence user_num nocache; 

-- 조회
SELECT * FROM user_tbl;

-- INSERT 예
INSERT INTO user_tbl (user_num,user_id,user_pw,user_name,user_pnum,user_email) values 
                  (user_num.nextval,'test3','1234','김대현','01012345678','test@naver.com');


-- ★회원등급★   
-- auto
CREATE SEQUENCE auth_num;

CREATE TABLE auth_tbl(
auth_num number(10,0) PRIMARY key,
user_id varchar2(20),-- fk
auth varchar2(20) not null
);

-- 시퀀스 해결
alter sequence auth_num nocache; 

-- 외래키 설정
alter table auth_tbl add constraint fk_auth foreign key (user_id) references user_tbl(user_id);

-- INSERT 예
INSERT INTO auth_tbl (auth_num,user_id,auth) values 
                       (auth_num.nextval,'test3','운영자');         
-- 조회
select*from auth_tbl;                                
                           

-- ★소설(공통)★
-- auto
CREATE SEQUENCE novel_num;

CREATE TABLE novel_tbl(
    novel_num number(10,0) PRIMARY KEY,
    novel_writer varchar2(50) not null,
    novel_title varchar2(200) not null,
    novel_tsnum number(10,0) default 0,
    novel_category varchar2(10) not null,
    novel_week varchar2(10) not null,
    novel_end char(1) default '0'
);

-- 시퀀스 해결
alter sequence novel_num nocache; 

-- INSERT 예
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'작가은총','은총이의소설',10, '액션', '금요일');
                        
-- DELETE 예
DELETE FROM novel_tbl WHERE novel_num = 1;

-- 조회
SELECT * FROM novel_tbl;
UPDATE novel_tbl
			SET
		novel_title = '호랑이의 소설1', novel_tsnum = 16, novel_category = '멜로', novel_week ='금요일' WHERE novel_num = 1;

-- ★유료소설★
-- auto
CREATE SEQUENCE paid_num;
CREATE SEQUENCE paid_snum;

CREATE TABLE paid_tbl(
    paid_num number(10,0) PRIMARY KEY,
    novel_num number(10,0) not null, -- fk
    paid_snum number(10,0) not null,
    paid_title varchar2(200) not null,
    paid_content CLOB not null,
    paid_rdate date default sysdate,
    paid_mdate date ,
    paid_hit number(10,0) default 0,
    paid_rec number(10,0) default 0,
    paid_price number(10,0) default 1
    );
    
-- 시퀀스 해결
alter sequence paid_num nocache;
alter sequence paid_snum nocache;

-- 외래키   
alter table paid_tbl add constraint fk_paid 
  foreign key (novel_num) references novel_tbl(novel_num);

-- INSERT 예
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '1', 10,'대현의소설1편','대현이는 소설을 정말 못써');
                        
-- 조회
SELECT * FROM paid_tbl;



-- ★무료소설★
-- auto
CREATE SEQUENCE free_num;
CREATE SEQUENCE free_snum;

CREATE TABLE free_tbl(
    free_num number(10,0) PRIMARY KEY,
    novel_num number(10,0) not null, -- fk
    free_snum number(10,0) not null,
    free_title varchar2(200) not null,
    free_content CLOB not null,
    free_rdate date default sysdate,
    free_mdate date ,
    free_hit number(10,0) default 0,
    free_rec number(10,0) default 0
    );
    
-- 시퀀스 해결
alter sequence free_num nocache;
alter sequence free_snum nocache;

-- 외래키   
alter table free_tbl add constraint fk_free 
  foreign key (novel_num) references novel_tbl(novel_num);

-- INSERT 예
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '3', 5,'은총의소설1편','은총이는 소설을 정말 못써'); 
                        
-- 조회
SELECT * FROM free_tbl;
         
                        
-- ★자유게시판★
-- auto
CREATE SEQUENCE free_board_num;

CREATE TABLE free_board_tbl(
  free_board_num number(10,0) PRIMARY KEY,
  free_board_title varchar2(50) not null,
  free_board_content varchar2(2000) not null,
  free_board_writer varchar2(50) not null,
  free_board_rdate date default sysdate,
  free_board_mdate date,
  free_board_hit number(10,0) default 0
);

-- 시퀀스 해결
alter sequence free_board_num nocache;

-- INSERT 예
INSERT INTO free_board_tbl (free_board_num, free_board_title, free_board_content, free_board_writer) values 
                  (free_board_num.nextval,'대현이의글','대현이가쓴글', '대현');
                  
-- DELETE 예
DELETE FROM free_board_tbl WHERE free_board_num = 196610;

-- 조회 
SELECT * FROM free_board_tbl;

-- ★댓글(분류)★
-- auto
CREATE SEQUENCE repl_sort_num;

CREATE TABLE repl_sort_tbl(
  repl_sort_num number(10,0) PRIMARY KEY,
  repl_sort_type varchar2(50) not null
);

-- 시퀀스 해결
alter sequence repl_sort_num nocache;

--INSERT 예
INSERT INTO repl_sort_tbl (repl_sort_num, repl_sort_type) values 
                        (repl_sort_num.nextval,'자유게시판');

-- 조회
SELECT * FROM repl_sort_tbl;

-- ★댓글(내용)★
-- auto
CREATE SEQUENCE repl_num;

CREATE TABLE repl_tbl(
  repl_num number(10,0) PRIMARY KEY,
  repl_sort_type varchar2(50) not null, -- fk
  novel_num number(10,0) not null,-- fk
  repl_snum number(10,0) not null, -- 글번호(회차) ??
  repl_content varchar2(1000) not null,
  repl_writer varchar2(50) not null,
  repl_rdate date default sysdate,
  repl_mdate date
);

-- 시퀀스 해결
alter sequence repl_num nocache;

-- 외래키 설정
alter table repl_tbl add constraint fk_repl
  foreign key (repl_sort_type) references repl_sort_tbl(repl_sort_type);
  
alter table repl_tbl add constraint fk_repl1
  foreign key (novel_num) references novel_tbl(novel_num);

--INSERT 예
INSERT INTO repl_sort_tbl (repl_sort_num, repl_sort_type) values 
                        (repl_sort_num.nextval,'자유게시판');
-- 조회
SELECT * FROM repl_tbl;
  
  
-- ★토너먼트(대회)★
-- auto
CREATE SEQUENCE to_num;

CREATE TABLE tourna_tbl(
  to_num number(10,0) PRIMARY KEY,
  to_name varchar2(50) not null,
  to_sdate date default sysdate,
  to_edate date
);

-- 시퀀스 해결
alter sequence to_num nocache;

--INSERT 예
INSERT INTO tourna_tbl (to_num, to_name) values 
                        (to_num.nextval,'스프링배 소설 배틀');
-- 조회
SELECT * FROM tourna_tbl;


-- ★토너먼트(작품)★
-- auto
CREATE SEQUENCE towork_num;

CREATE TABLE towork_tbl(
  towork_num number PRIMARY KEY,
  to_num number(10,0), -- fk
  novel_num number(10,0), -- fk
  towork_rec number(10,0) default 0
);

-- 시퀀스 해결
alter sequence towork_num nocache;

-- 외래키 설정
alter table towork_tbl add constraint fk_towork
  foreign key (to_num) references tourna_tbl(to_num);
 
 alter table towork_tbl add constraint fk_towork1
  foreign key (novel_num) references novel_tbl(novel_num);
  
-- INSERT 예
INSERT INTO towork_tbl (towork_num, to_num, novel_num) values
                        (towork_num.nextval,1,2);
                
-- 조회
SELECT * FROM towork_tbl;
  
    
-- ★선호작★
-- auto
CREATE SEQUENCE fav_num;

CREATE TABLE favorite_tbl(
  fav_num number(10,0) PRIMARY KEY,
  novel_num number(10,0), -- fk
  user_num number(10,0) -- fk
);

-- 시퀀스 해결
alter sequence fav_num nocache;

-- 외래키 설정
alter table favorite_tbl add constraint fk_favorite
  foreign key (novel_num) references novel_tbl(novel_num);
  
alter table favorite_tbl add constraint fk_favorite1
  foreign key (user_num) references user_tbl(user_num);
  
-- INSERT 예
INSERT INTO favorite_tbl (fav_num, novel_num, user_num) values
                          (fav_num.nextval,2,1);
-- 조회
SELECT * FROM favorite_tbl;


-- ★책갈피★
-- auto
CREATE SEQUENCE bm_num;

CREATE TABLE bookmark_tbl(
  bm_num number(10,0) PRIMARY KEY,
  novel_num number(10,0), -- fk
  bm_novel_num number(10,0),
  user_num number(10,0) -- fk
);

-- 시퀀스 해결
alter sequence bm_num nocache;

-- 외래키 설정
alter table bookmark_tbl add constraint fk_bookmark
  foreign key (novel_num) references novel_tbl(novel_num);
  
alter table bookmark_tbl add constraint fk_bookmark1
  foreign key (user_num) references user_tbl(user_num);
  
-- INSERT 예
INSERT INTO bookmark_tbl (bm_num, novel_num, bm_novel_num, user_num) values
            (bm_num.nextval, 2, 3, 1);
            
-- 조회
SELECT * FROM bookmark_tbl;


-- ★결제(현금->코인)★
-- auto
CREATE SEQUENCE charge_num;

CREATE TABLE charge_tbl(
  charge_num number(10,0) PRIMARY KEY,
  charge_date date default sysdate,
  user_num number(10,0), -- fk
  charge_price number(10) not null,
  charge_coin number(10),
  charge_coupon number(10)
);

-- 시퀀스 해결
alter sequence charge_num nocache;

-- 외래키 설정
alter table charge_tbl add constraint fk_charge
  foreign key (user_num) references user_tbl(user_num);
  
-- INSERT 예
INSERT INTO charge_tbl (charge_num, user_num, charge_price) values
                      (charge_num.nextval, 1, 500);          
                      
-- 조회
SELECT * FROM charge_tbl;


-- ★쿠폰★
-- auto
CREATE SEQUENCE coupon_num;

CREATE TABLE coupon_tbl(
  coupon_num number(10,0) PRIMARY KEY,
  coupon_value varchar2(20) not null
);

-- 시퀀스 해결
alter sequence coupon_num nocache;
--INSERT 예
INSERT INTO coupon_tbl (coupon_num,coupon_value) values
                      (coupon_num.nextval,'1000원쿠폰');
-- 조회
SELECT * FROM coupon_tbl;


-- ★사용내역(코인->작품구매)★
-- auto
CREATE SEQUENCE use_num;

CREATE TABLE use_tbl(
  use_num number(10,0) PRIMARY KEY,
  user_num number(10,0), -- fk
  use_type varchar2(10) not null,
  use_count number(10) not null,
  use_date date default sysdate
);

-- 시퀀스 해결
alter sequence use_num nocache;

-- 외래키 설정
alter table use_tbl add constraint fk_use
  foreign key (user_num) references user_tbl(user_num);
  
-- INSERT 
INSERT INTO use_tbl (use_num, user_num, use_type, use_count) values
                    (use_num.nextval, 1, '코인', '100');       
                    
-- 조회
SELECT * FROM use_tbl;


-------------------------------------------------

-- ※테이블 날리기(역순으로 실행)※ 15
DROP TABLE user_tbl;
DROP TABLE auth_tbl;
DROP TABLE novel_tbl;
DROP TABLE paid_tbl;
DROP TABLE free_tbl;
DROP TABLE free_board_tbl;
DROP TABLE repl_sort_tbl;
DROP TABLE repl_tbl;
DROP TABLE tourna_tbl;
DROP TABLE towork_tbl;
DROP TABLE favorite_tbl;
DROP TABLE bookmark_tbl;
DROP TABLE charge_tbl;
DROP TABLE coupon_tbl;
DROP TABLE use_tbl;


-- ※시퀀스(auto)삭제※ 17
DROP SEQUENCE user_num;
DROP SEQUENCE auth_num;
DROP SEQUENCE novel_num;
DROP SEQUENCE paid_num;
DROP SEQUENCE paid_snum;
DROP SEQUENCE free_num;
DROP SEQUENCE free_snum;
DROP SEQUENCE free_board_num;
DROP SEQUENCE repl_sort_num;
DROP SEQUENCE repl_num;
DROP SEQUENCE to_num;
DROP SEQUENCE towork_num;
DROP SEQUENCE fav_num;
DROP SEQUENCE bm_num;
DROP SEQUENCE charge_num;
DROP SEQUENCE coupon_num;
DROP SEQUENCE use_num;