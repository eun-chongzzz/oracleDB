CREATE TABLE pay_tbl(
  itemname varchar2(100) not null,
  amount number not null,
  merchant_uid varchar2(100) not null primary key
);
select * from pay_tbl;

-- ★결제(현금->코인)★
CREATE SEQUENCE charge_num;

CREATE TABLE charge_tbl(
  charge_num number(10,0) PRIMARY KEY,
  merchant_uid varchar2(100) unique, -- 추가
  itemname varchar2(100) not null, -- 추가
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
                  
-- 조회
SELECT * FROM charge_tbl;