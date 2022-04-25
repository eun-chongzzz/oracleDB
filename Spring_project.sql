/* �� ���� ����� ���ǻ���
 1. auto ���� -> ���̺� ���� -> nocache ����
  (auto���� �����ؾ� auto��ȣ�� 1���� ���۵�.)
 2. �Ϻ� ���̺� drop�� �ܷ�Ű ���� ���̺����� ������ (��ü ������ ���� : ���� ���� ����)
 3. ���̺� drop�� �ص� auto�� �������,
   �׷��Ƿ� drop sequence 'auto�����Ȱ�'; �� �������. (�ؿ� ���� �������)
*/

-- commit ������ �����ؾ� ��μ� �����Ͱ� ������
commit;

-- ��������
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

-- ������ �ذ�
alter sequence user_num nocache; 

-- ��ȸ
SELECT * FROM user_tbl;

-- INSERT ��
INSERT INTO user_tbl (user_num,user_id,user_pw,user_name,user_pnum,user_email) values 
                  (user_num.nextval,'test3','1234','�����','01012345678','test@naver.com');


-- ��ȸ����ޡ�   
-- auto
CREATE SEQUENCE auth_num;

CREATE TABLE auth_tbl(
auth_num number(10,0) PRIMARY key,
user_id varchar2(20),-- fk
auth varchar2(20) not null
);

-- ������ �ذ�
alter sequence auth_num nocache; 

-- �ܷ�Ű ����
alter table auth_tbl add constraint fk_auth foreign key (user_id) references user_tbl(user_id);

-- INSERT ��
INSERT INTO auth_tbl (auth_num,user_id,auth) values 
                       (auth_num.nextval,'test3','���');         
-- ��ȸ
select*from auth_tbl;                                
                           

-- �ڼҼ�(����)��
-- auto
CREATE SEQUENCE novel_num;

CREATE TABLE novel_tbl(
    novel_num number(10,0) PRIMARY KEY,
    novel_writer varchar2(15) not null,
    novel_title varchar2(20) not null,
    novel_tsnum number(10,0) default 0,
    novel_category varchar2(10) not null,
    novel_week varchar2(10) not null
);

-- ������ �ذ�
alter sequence novel_num nocache; 

-- INSERT ��
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�۰�����','�������ǼҼ�',10, '�׼�', '�ݿ���');
                        
-- DELETE ��
DELETE FROM novel_tbl WHERE novel_num = 1;

-- ��ȸ
SELECT * FROM novel_tbl;


-- ������Ҽ���
-- auto
CREATE SEQUENCE paid_num;
CREATE SEQUENCE paid_snum;

CREATE TABLE paid_tbl(
    paid_num number(10,0) PRIMARY KEY,
    novel_num number(10,0) not null, -- fk
    paid_snum number(10,0) not null,
    paid_title varchar2(20) not null,
    paid_content CLOB not null,
    paid_rdate date default sysdate,
    paid_mdate date ,
    paid_hit number(10,0) default 0,
    paid_rec number(10,0) default 0,
    paid_price number(10,0) default 1
    );
    
-- ������ �ذ�
alter sequence paid_num nocache;
alter sequence paid_snum nocache;

-- �ܷ�Ű   
alter table paid_tbl add constraint fk_paid 
  foreign key (novel_num) references novel_tbl(novel_num);

-- INSERT ��
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '2', 10,'�����ǼҼ�1��','�����̴� �Ҽ��� ���� ����'); -- paid_title 20���ڰ� �ƴ�..?
                        
-- ��ȸ
SELECT * FROM paid_tbl;


-- �ڹ���Ҽ���
-- auto
CREATE SEQUENCE free_num;
CREATE SEQUENCE free_snum;

CREATE TABLE free_tbl(
    free_num number(10,0) PRIMARY KEY,
    novel_num number(10,0) not null, -- fk
    free_snum number(10,0) not null,
    free_title varchar2(20) not null,
    free_content CLOB not null,
    free_rdate date default sysdate,
    free_mdate date ,
    free_hit number(10,0) default 0,
    free_rec number(10,0) default 0
    );
    
-- ������ �ذ�
alter sequence free_num nocache;
alter sequence free_snum nocache;

-- �ܷ�Ű   
alter table free_tbl add constraint fk_free 
  foreign key (novel_num) references novel_tbl(novel_num);

-- INSERT ��
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '3', 5,'�����ǼҼ�1��','�����̴� �Ҽ��� ���� ����'); -- free_title 20���ڰ� �ƴ�..?
                        
-- ��ȸ
SELECT * FROM free_tbl;
         
                        
-- �������Խ��ǡ�
-- auto
CREATE SEQUENCE board_num;

CREATE TABLE board_tbl(
  board_num number(10,0) PRIMARY KEY,
  board_title varchar2(50) not null,
  board_content varchar2(2000) not null,
  board_writer varchar2(50) not null,
  board_rdate date default sysdate,
  board_mdate date,
  board_hit number(10,0) default 0
);

-- auto ������ �� ����
drop sequence board_num;

-- ������ �ذ�
alter sequence board_num nocache;

-- INSERT ��
INSERT INTO board_tbl (board_num, board_title, board_content, board_writer) values 
                  (board_num.nextval,'�������Ǳ�','�����̰�����', '����');
                  
-- DELETE ��
DELETE FROM board_tbl WHERE board_num = 196610;

-- ��ȸ 
SELECT * FROM board_tbl;


-- ����ʸ�Ʈ(��ȸ)��
-- auto
CREATE SEQUENCE to_num;

CREATE TABLE tourna_tbl(
  to_num number(10,0) PRIMARY KEY,
  to_name varchar2(50) not null,
  to_sdate date default sysdate,
  to_edate date
);

-- ������ �ذ�
alter sequence to_num nocache;

--INSERT ��
INSERT INTO tourna_tbl (to_num, to_name) values 
                        (to_num.nextval,'�������� �Ҽ� ��Ʋ');
-- ��ȸ
SELECT * FROM tourna_tbl;


-- ����ʸ�Ʈ(��ǰ)��
-- auto
CREATE SEQUENCE towork_num;

CREATE TABLE towork_tbl(
  towork_num number PRIMARY KEY,
  to_num number(10,0), -- fk
  novel_num number(10,0), -- fk
  towork_rec number(10,0) default 0
);

-- ������ �ذ�
alter sequence towork_num nocache;

-- �ܷ�Ű ����
alter table towork_tbl add constraint fk_towork
  foreign key (to_num) references tourna_tbl(to_num);
 
 alter table towork_tbl add constraint fk_towork1
  foreign key (novel_num) references novel_tbl(novel_num);
  
-- INSERT ��
INSERT INTO towork_tbl (towork_num, to_num, novel_num) values
                        (towork_num.nextval,1,2);
                
-- ��ȸ
SELECT * FROM towork_tbl;
  
    
-- �ڼ�ȣ�ۡ�
-- auto
CREATE SEQUENCE fav_num;

CREATE TABLE favorite_tbl(
  fav_num number(10,0) PRIMARY KEY,
  novel_num number(10,0), -- fk
  user_num number(10,0) -- fk
);

-- ������ �ذ�
alter sequence fav_num nocache;
-- �ܷ�Ű ����
alter table favorite_tbl add constraint fk_favorite
  foreign key (novel_num) references novel_tbl(novel_num);
alter table favorite_tbl add constraint fk_favorite1
  foreign key (user_num) references user_tbl(user_num);
-- INSERT ��
INSERT INTO favorite_tbl (fav_num, novel_num, user_num) values
                          (fav_num.nextval,2,1);
-- ��ȸ
SELECT * FROM favorite_tbl;


-- ��å���ǡ�
-- auto
CREATE SEQUENCE bm_num;

CREATE TABLE bookmark_tbl(
  bm_num number(10,0) PRIMARY KEY,
  novel_num number(10,0), -- fk
  bm_novel_num number(10,0),
  user_num number(10,0) -- fk
);

-- ������ �ذ�
alter sequence bm_num nocache;
-- �ܷ�Ű ����
alter table bookmark_tbl add constraint fk_bookmark
  foreign key (novel_num) references novel_tbl(novel_num);
  
alter table bookmark_tbl add constraint fk_bookmark1
  foreign key (user_num) references user_tbl(user_num);
  
-- INSERT ��
INSERT INTO bookmark_tbl (bm_num, novel_num, bm_novel_num, user_num) values
            (bm_num.nextval, 2, 3, 1);
            
-- ��ȸ
SELECT * FROM bookmark_tbl;


-- �ڰ���(����->����)��
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

-- ������ �ذ�
alter sequence charge_num nocache;

-- �ܷ�Ű ����
alter table charge_tbl add constraint fk_charge
  foreign key (user_num) references user_tbl(user_num);
  
-- INSERT ��
INSERT INTO charge_tbl (charge_num, user_num, charge_price) values
                      (charge_num.nextval, 1, 500);          
                      
-- ��ȸ
SELECT * FROM charge_tbl;


-- ��������
-- auto
CREATE SEQUENCE coupon_num;

CREATE TABLE coupon_tbl(
  coupon_num number(10,0) PRIMARY KEY,
  coupon_value varchar2(20) not null
);

-- ������ �ذ�
alter sequence coupon_num nocache;
--INSERT ��
INSERT INTO coupon_tbl (coupon_num,coupon_value) values
                      (coupon_num.nextval,'1000������');
-- ��ȸ
SELECT * FROM coupon_tbl;


-- �ڻ�볻��(����->��ǰ����)��
-- auto
CREATE SEQUENCE use_num;

CREATE TABLE use_tbl(
  use_num number(10,0) PRIMARY KEY,
  user_num number(10,0), -- fk
  use_type varchar2(10) not null,
  use_count number(10) not null,
  use_date date default sysdate
);

-- ������ �ذ�
alter sequence use_num nocache;

-- �ܷ�Ű ����
alter table use_tbl add constraint fk_use
  foreign key (user_num) references user_tbl(user_num);
  
-- INSERT 
INSERT INTO use_tbl (use_num, user_num, use_type, use_count) values
                    (use_num.nextval, 1, '����', '100');       
                    
-- ��ȸ
SELECT * FROM use_tbl;


-------------------------------------------------

-- �����̺� ������(�������� ����)�� 13
DROP TABLE user_tbl;
DROP TABLE auth_tbl;
DROP TABLE novel_tbl;
DROP TABLE paid_tbl;
DROP TABLE free_tbl;
DROP TABLE board_tbl;
DROP TABLE tourna_tbl;
DROP TABLE towork_tbl;
DROP TABLE favorite_tbl;
DROP TABLE bookmark_tbl;
DROP TABLE charge_tbl;
DROP TABLE coupon_tbl;
DROP TABLE use_tbl;


-- �ؽ�����(auto)������ 15
DROP SEQUENCE user_num;
DROP SEQUENCE auth_num;
DROP SEQUENCE novel_num;
DROP SEQUENCE paid_num;
DROP SEQUENCE paid_snum;
DROP SEQUENCE free_num;
DROP SEQUENCE free_snum;
DROP SEQUENCE board_num;
DROP SEQUENCE to_num;
DROP SEQUENCE towork_num;
DROP SEQUENCE fav_num;
DROP SEQUENCE bm_num;
DROP SEQUENCE charge_num;
DROP SEQUENCE coupon_num;
DROP SEQUENCE use_num;