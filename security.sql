CREATE TABLE users(
    username varchar2(50) not null primary key,
    password varchar2(100) not null,
    enabled char(1) default '1'
);

CREATE TABLE authorities(
    username varchar2(50) not null,
    authority varchar2(50) not null,
    constraint fk_authorities_users foreign key(username) references users(username)
);
drop table authorities;

create unique index ix_auth_username on authorities (username, authority);

insert into users(username, password) values ('user00', 'pw00');
insert into users(username, password) values ('member00', 'pw00');
insert into users(username, password) values ('admin00', 'pw00');

insert into authorities (username, authority) values ('user00', 'ROLE_USER');
insert into authorities (username, authority) values ('member00', 'ROLE_MEMBER');
insert into authorities (username, authority) values ('admin00', 'ROLE_MEMBER');
insert into authorities (username, authority) values ('admin00', 'ROLE_ADMIN');

commit;

SELECT * FROM users;
SELECT * FROM authorities;


-------------------------------------------------------------------------------
-- Ŀ���ҹ�� �α��� ���̺�
CREATE TABLE member_tbl(
    userid varchar2(50) not null primary key,
    userpw varchar2(100) not null,
    username varchar2(100) not null,
    regdate date default sysdate,
    updatedate date default sysdate,
    enabled char(1) default '1'
);

CREATE TABLE member_auth(
    userid varchar2(50) not null,
    auth varchar2(50) not null,
    constraint fk_member_auth foreign key(userid) references member_tbl(userid)
);

SELECT m.userid, userpw, username, enabled, regdate, updatedate, a.auth FROM member_tbl m LEFT 
OUTER JOIN member_auth a on m.userid = a.userid WHERE m.userid = 'user25';
select * from member_tbl;
select * from member_auth;

delete from member_tbl where userid = 'TEST';
delete from member_auth where userid = 'TEST';
-----------------------------------------------------

-- �ڵ��α���
CREATE TABLE persistent_logins(
    username varchar(64) not null,
    series varchar(64) primary key,
    token varchar(64) not null,
    last_used timestamp not null
);

SELECT * FROM persistent_logins;




