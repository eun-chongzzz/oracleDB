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

select * from paid_tbl;
select * from novel_tbl;

-- ����¡ ó�� ����                  
select * from (SELECT * FROM
( SELECT /*+ INDEX_DESC(paid_tbl pk_paid) */
  ROWNUM rn, paid_tbl.* FROM paid_tbl WHERE rownum <= 20)
    WHERE rn > 10) where novel_num = 4;
    
select count(*) from paid_tbl where novel_num = 5;
                        
                        commit;
select * from novel_tbl;

-- �� DB�� ���� ��� �����߱⶧���� novel_num�� �������ּž� �� ���� �ֽ��ϴ�.
-- content ������ �ʹ� ª���� �� �� �����ϼ���.
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '1', 1, '��ģ �ߵ� 1ȭ', '��ģ��ģ��ģ��ģ��ģ��ģ', '��ģ��ģ��ģ��ģ��ģ��ģ');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '1', 2, '��ģ �ߵ� 2ȭ', '��ģ2��ģ2��ģ2��ģ2��ģ2��ģ2', '��ģ2��ģ2��ģ2��ģ2��ģ2��ģ2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '2', 1, '���� ��Ų ���� 1ȭ', '��������������������', '��������������������');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '2', 2, '���� ��Ų ���� 2ȭ', '����2����2����2����2', '����2����2����2����2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 1, '������ ����մϴ� 1ȭ', '��������������������', '��������������������');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 2, '������ ����մϴ� 2ȭ', '����2����2����2����2', '����2����2����2����2');

INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '4', 1, '���̺����� 1ȭ', '����������������', '����������������');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '4', 2, '���̺����� 2ȭ', '����2����2����2����2', '����2����2����2����2');

INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '5', 1, '���� 1ȭ', '���������', '���������');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '5', 2, '���� 2ȭ', '���2���2���2���2', '���2���2���2���2');

INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '6', 1, '�ı����� ����� 1ȭ', '�ı��ı��ı��ı�', '�ı��ı��ı��ı�');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '6', 2, '�ı����� ����� 2ȭ', '�ı�2�ı�2�ı�2�ı�2', '�ı�2�ı�2�ı�2�ı�2');
commit;
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '7', 1, '�� ���� ���� 1ȭ', '���̾��̾��̾���', '���̾��̾��̾���');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '7', 2, '�� ���� ���� 2ȭ', '����2����2����2����2', '����2����2����2����2');

INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '8', 1, '�Ϸ��� ���ڵ� 1ȭ', '�Ϸ��Ϸ��Ϸ��Ϸ�', '�Ϸ��Ϸ��Ϸ��Ϸ�');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '8', 2, '�Ϸ��� ���ڵ� 2ȭ', '�Ϸ�2�Ϸ�2�Ϸ�2�Ϸ�2', '�Ϸ�2�Ϸ�2�Ϸ�2�Ϸ�2');
                 
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '9', 1, '�����¼� 1ȭ', '�����¼������¼������¼�', '�����¼������¼������¼�');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '9', 2, '�����¼� 2ȭ', '�����¼�2�����¼�2�����¼�2', '�����¼�2�����¼�2�����¼�2');    
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '10', 1, '����� ��ȥ�ϰڽ��ϴ� 1ȭ', '����������', '����������');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '10', 2, '����� ��ȥ�ϰڽ��ϴ� 2ȭ', '����2����2����2����2', '����2����2����2����2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '11', 1, '�Ŷ��� �ٲ� ���� ��ȥ 1ȭ', '�Ŷ��Ŷ��Ŷ��Ŷ�', '�Ŷ��Ŷ��Ŷ��Ŷ�');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '11', 2, '�Ŷ��� �ٲ� ���� ��ȥ 2ȭ', '�Ŷ�2�Ŷ�2�Ŷ�2�Ŷ�2', '�Ŷ�2�Ŷ�2�Ŷ�2�Ŷ�2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '12', 1, '��������� ó�� 1ȭ', 'ó��ó��ó��ó��', 'ó��ó��ó��ó��');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '12', 2, '��������� ó�� 2ȭ', 'ó��2ó��2ó��2ó��2', 'ó��2ó��2ó��2ó��2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '13', 1, '���� ��Ų ���� 1ȭ', '����������������', '����������������');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '13', 2, '���� ��Ų ���� 2ȭ', '����2����2����2����2', '����2����2����2����2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '14', 1, '����� ���� ����� 1ȭ', '����缳��缳���', '����缳��缳���');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '14', 2, '����� ���� ����� 2ȭ', '�����2�����2�����2', '�����2�����2�����2'); 
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '15', 1, '��ĳ�� 1ȭ', '��ĳ����ĳ����ĳ��', '��ĳ����ĳ����ĳ��');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '15', 2, '��ĳ�� 2ȭ', '��ĳ��2��ĳ��2��ĳ��2', '��ĳ��2��ĳ��2��ĳ��2'); 
                        
                                    
                        commit;
                        
