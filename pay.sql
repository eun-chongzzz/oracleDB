CREATE TABLE pay_tbl(
  itemname varchar2(100) not null,
  amount number not null,
  merchant_uid varchar2(100) not null primary key
);
select * from pay_tbl;
