INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�������۰�','user','������ ����', 10, 'wuxia', 'Mon');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'ȭ����2�۰�','user','ȭ���� ����2', 5, 'wuxia', 'Tue'); 
                    
                    
                    
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�������۰�','user','������ ����',10, 'wuxia', 'Wen');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'������۰�','user','����� ����',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�ݿ����۰�','user','�ݿ��� ����',10, 'fantasy', 'Fri');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '1', 3, '������ ���� 1��', '������ ���� 1�� ����', '������ ���� 1�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '2', 3, 'ȭ���� ���� 1��', 'ȭ���� ���� 1�� ����', 'ȭ���� ���� 1�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 3, '������ ���� 1��', '������ ���� 1�� ����', '������ ���� 1�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '4', 3, '����� ���� 1��', '����� ���� 1�� ����', '����� ���� 1�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '5', 3, '�ݿ��� ���� 1��', '�ݿ��� ���� 1�� ����', '�ݿ��� ���� 1�� ����');
                        
                        commit;
                        



-- ����Ÿ���Ҽ��� 
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'����','������� �����̴�',100, 'fantasy', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�۷���','������ 1���ڰ� �Ǿ���',100, 'fantasy', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�߰�','�� ȥ�ڸ� ������',100, 'fantasy', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'���׸�','�Ǵ��� ��ư��¹�',100, 'fantasy', 'free');
-- �ڷθǽ��Ҽ��� 
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'������','����ȿ��',100, 'romance', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�̼�','���������',100, 'romance', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'������','�Ҹ���',100, 'romance', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'������','����� ���� ��ó��',100, 'romance', 'free');

-- �ڹ����Ҽ���         
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�念��','���밭ȣ',100, 'wuxia', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�±�','õ�����',100, 'wuxia', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'����','�±ع�',100, 'wuxia', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'������','����',100, 'wuxia', 'free');

-- ���߸��Ҽ���                                 
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�����̰���','�����',100, 'detective', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�ƿ��߸� ���','��Ž���ڳ�',100, 'detective', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'Ű�پ߽� ��','�ҳ�Ž�� ������',100, 'detective', 'free');                        
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'B.A.�и���','�����ε� ����',100, 'detective', 'free'); 
                        
                        


INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '7',1,'������_��1��-1ȭ','�̹� Ŭ������ ���� �ӿ� ������.
                        �׷���
                        �� [�����]���� �� ����� �����̴�.'); 
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '7',2,'������_��1��-2ȭ','[������ ��]
���󿡼� ���� ������ ���� �� �ϳ� ������ ����ϰ� ���۵� �ϳ��� ���迡�� ���ʾ��� �ΰ����� NPC�� �����ϴ�, �ִܱ� >������ ���� ���ؼ��� ���ӽð����� 10�� �̻� �÷��̰� �ʿ��� ����.'); 
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '7',3,'������_��1��-3ȭ','���ΰ� �;���.
���� ������ ������� �� �ǰ�.
��� ���ɼ��� �����ϰ� ���� �ϳ���, �ƹ��� ���� ���� �ʴ� ���̶� �����̶� �����ߴ�.
�ƹ��� �̼������� �����ϴ��� �̰��� ������ �´� �� ���Ҵ�.
52���� �÷����ϸ鼭 �� ������ ���丮�� �Ǵ� ��� �ִ�.'); 
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '7',4,'������_��1��-4ȭ','���� ���� ����������

�������� ������ ��� ���� Ű���.

�׷� �� ���� ���� �Ѿ ������ �÷��̾�ϱ�.');                       

