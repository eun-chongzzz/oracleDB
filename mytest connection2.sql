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
CREATE SEQUENCE user_num;
alter sequence user_num nocache; -- 시퀀스가 20씩 증가 해결
commit;

select * from user_tbl;

INSERT INTO user_tbl (user_num,user_id,user_pw,user_name,user_pnum,user_email) values 
                  (user_num.nextval,'test3','1234','김대현','01012345678','test@naver.com');
                  
CREATE TABLE auth_tbl(
auth_num number(10,0) PRIMARY key,
user_id varchar2(20),
auth varchar2(20) not null
);

alter table auth_tbl add constraint fk_auth foreign key (user_id) references user_tbl(user_id);

INSERT INTO auth_tbl (auth_num,user_id,auth) values 
                  (auth_num.nextval,'test2','운영자');

select*from auth_tbl;                  
drop table auth_tbl;                  
                  
CREATE SEQUENCE auth_num;          
alter sequence auth_num nocache; -- 시퀀스가 20씩 증가 해결

CREATE TABLE novel_tbl(
    novel_num number(10,0) PRIMARY KEY,
    novel_writer varchar2(15) not null,
    novel_title varchar2(20) not null,
    novel_tsnum number(10,0) default 0,
    novel_category varchar2(10) not null,
    novel_week varchar2(10) not null
);
CREATE TABLE paid_tbl(
    paid_num number(10,0) PRIMARY KEY,
    novel_num number(10,0) not null,
    paid_snum number(10,0) not null,
    paid_title varchar2(20) not null,
    paid_content CLOB not null,
    paid_rdate date default sysdate,
    paid_mdate date ,
    paid_hit number(10,0) default 0,
    paid_rec number(10,0) default 0,
    paid_price number(10,0) default 1
    );
    drop table paid_tbl;
    
CREATE TABLE free_tbl(
    free_num number(10,0) PRIMARY KEY,
    novel_num number(10,0) not null,
    free_snum number(10,0) not null,
    free_title varchar2(20) not null,
    free_content CLOB not null,
    free_rdate date default sysdate,
    free_mdate date ,
    free_hit number(10,0) default 0,
    free_rec number(10,0) default 0
    );
    drop table paid_tbl;
