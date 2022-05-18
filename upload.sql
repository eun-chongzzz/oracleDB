create table ictimage(
    uuid varchar2(100) not null,
    uploadPath varchar2(200) not null,
    fileName varchar2(100) not null,
    fileType char(1) default 'I',
    bno number(10)
);

alter table ictimage add constraint pk_attach primary key (uuid);
alter table ictimage add constraint fk_board_attach foreign key(bno) references board_tbl(bno);


select * from ictimage;