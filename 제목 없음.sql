INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�������۰�','������ ����', 10, 'wuxia', 'Mon');
                        
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'ȭ�����۰�','ȭ���� ����', 10, 'romance', 'Tue');
                    
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�������۰�','������ ����',10, 'wuxia', 'Wen');

INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'������۰�','����� ����',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'�ݿ����۰�','�ݿ��� ����',10, 'fantasy', 'Fri');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '1', 3, '������ ���� 3��', '������ ���� 3�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '2', 3, 'ȭ���� ���� 3��', 'ȭ���� ���� 3�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '3', 3, '������ ���� 3��', '������ ���� 3�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '4', 3, '����� ���� 3��', '����� ���� 3�� ����');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '5', 3, '�ݿ��� ���� 3��', '�ݿ��� ���� 3�� ����');
                        
                        commit;