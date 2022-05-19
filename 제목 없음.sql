INSERT INTO novel_tbl (novel_num, novel_writer, user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval, '�', 'user20', '��ģ �ߵ�', 10, 'romance', 'Mon');

INSERT INTO novel_tbl (novel_num, novel_writer, user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval, '�鹦', 'user20', '���� ��Ų ����', 10, 'romance', 'Mon');

INSERT INTO novel_tbl (novel_num, novel_writer, user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval, '������ ����մϴ�', 'user20', '������ ����մϴ�', 10, 'romance', 'Mon');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'����','user20','���̺�����', 5, 'romance', 'Tue'); 

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'�ڼ���','user20','����', 5, 'romance', 'Tue');                     

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'�ھ���','user20','�ı����� �����', 5, 'romance', 'Tue');                     
                    
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�þƴ�','user20','�� ���� ����',10, 'romance', 'Wen');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'����Ÿ��Ʈ','user20','�Ϸ��� ���ڵ�',10, 'romance', 'Wen');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'������','user20','�����¼�',10, 'romance', 'Wen');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'����ȭ','user20','����� ��ȥ�ϰڽ��ϴ�',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'������ȫ��', 'user20', '�Ŷ��� �ٲ� ���� ��ȥ',10, 'fantasy', 'Thu');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�����','user20','��������� ó��',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�鹦','user20','���� ��Ų ����',10, 'fantasy', 'Fri');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�����','user20','����� ���� �����',10, 'fantasy', 'Fri');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'������','user20','��ĳ��',10, 'fantasy', 'Fri');
                        
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2)
(select paid_num.nextval, novel_num, paid_snum, paid_title, paid_content1,paid_content2 from paid_tbl);                       

                  
select * from (SELECT * FROM
( SELECT /*+ INDEX_DESC(paid_tbl pk_paid) */
  ROWNUM rn, paid_tbl.* FROM paid_tbl WHERE rownum <= 20)
    WHERE rn > 10) where novel_num = 5;
    
select count(*) from paid_tbl where novel_num = 5;
                        
                        commit;
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '1', 3, '������ ���� 1��', '������ ���� 1�� ����', '������ ���� 1�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 3, '�ι�° ȭ���� ���� 3��', '�ι�° ȭ���� ���� 3�� ����', 'ȭ���� ���� 1�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 3, '������ ���� 1��', '������ ���� 1�� ����', '������ ���� 1�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '4', 3, '����� ���� 1��', '����� ���� 1�� ����', '����� ���� 1�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '5', 3, '�ݿ��� ���� 1��', '�ݿ��� ���� 1�� ����', '�ݿ��� ���� 1�� ����');
                        
                        commit;
                        
