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
 -------------------------------------------------------------------------------------------------------------------                                   
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'16',1,'������ ���� ����_1��1ȭ','����� ȸ��� �赶�ڰ� �ڽ��� 10�� �Ѱ� �д� �Ҽ��� ������ �ǰ�','�ݺ��� ���� �ӿ��� �ڽ��� ���ϴ� �ḻ�� ���� ���� �������ϴ� �̾߱⸦ �ٷ��');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'16',2,'������ ���� ����_1��2ȭ','��� �ð����� ««�� ���Ҽ� �б⸦ ���� ����� ȸ��� �赶��.','���� ��ó�� ��ٱ� ��ö���� ����Ʈ���� �� �״� 10�� ���� ����� ������ �Ҽ��� ����� ���迡�� ��Ƴ��� ��� ������ �ϰ�Ǿ����� �˰� �ȴ�.');                        
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'17',1,'�̼��ǿ���_1��1ȭ','TK�׷��� �е��� �İ��ڰ� �ǰڴٴ� �ϳ����� 34�� ���� �λ��� ��ƿ԰Ǹ�.','�������� �������� ���̹��̾��� ���ؼ����� ���￡�� ���� ���ھ�� �е��� �й�.');                       
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'17',2,'�̼��ǿ���_1��2ȭ','�λ��� ��ǥ�� ���ǹ����� ����, ���簡 ������ ���̴�.','�Ի絿���� ���ΰ��� �� �� �������¸� �ô´ܴ�');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'18',1,'���븶��_1��1ȭ','���� ��ÿ� ����� ������ �޴� ������ ����� õ����,','�̷����� ��Ÿ�� �ļ��� õ������ ���� ���� �ӽ��� ������ �� ���� �λ��� �۵θ�° �ٲ��!');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'18',2,'���븶��_1��2ȭ',' ������ �Ѿ� ���� �ְ��� �ڸ��� ������ ���� õ������ ��ħ���� �̾߱Ⱑ ���۵ȴ�!','');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'19',1,'���̾� ��ȭ���� ����_1��1ȭ','å �Ӹ� �ƴ϶� ��ȭ�� �������ε� ���� �� �־���.','���̾� ��ȭ���� ������ �� 5������ �̷�����µ���');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'19',2,'���̾� ��ȭ���� ����_1��2ȭ','30�� ��° ��� �ִ� ���̾� ��ȭ���� ����� �������� ��ۿ���','���ŷκ��� ������ ��� ��� ������ ������ �ϸ鼭 �ް� �Ǵ� �⹦�� �Ϸ���� �̾߱⸦ �׸� ��ǰ�Դϴ�');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'20',1,'��ȥ�ڸ�������_1��1ȭ','10�� ��, ����ü ������ �� �� ���� ������Ʈ����� ���� ���ܳ��� �ǰ�','�װ��� ���������̶� �θ���. �� �ȿ����� ����������� ���簡 ��۰Ÿ���.');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'20',2,'��ȥ�ڸ�������_1��2ȭ',' ������������ �ΰ����� �������̷� ���̰� �ȴ�.','�׸��� �� ������������ ��� �ΰ����� �����͡���� �Ѵ�.');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'21',1,'ȭ���ȯ_1��1ȭ','�� ȭ���� 13�� ����. õ�ϻ��˼�(����߲�����).','��ȭ����(��������) û��(��٥).');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'21',2,'ȭ���ȯ_1��2ȭ','õ�ϸ� ȥ���� ���߸� ������ϸ� õ��(��ت)�� ���� ġ�� �ʸ������ ���󿡼� ����.','�� ���� �ð��� �پ�Ѿ� ������ ������ �ٽ� ��Ƴ���.');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'22',1,'������_1��1ȭ','����õ����� õ�������� �Ŵ� ������ ����ϴ� �Ұ��� õ����� ������ ��',' õ������ �ױ� ���� �ڽ��� ã�ƿ� ������ ��û�� ���� õ���');
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'22',2,'������_1��2ȭ','ȯ���� ž�ַν��� �ǹ��� �ϼ��ϱ� ���Ͽ� �Ͻ������� �ڸ��� �ٲ� õ���','���� �����ϸ鼭 ���۵Ǵ� �̾߱�μ� ���� õ���� �༼�ϸ鼭 ������ ���� ..');                        
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'23',1,'��Ž���ڳ�_1��1ȭ','�������� �ڳ�, Ž������. �Ϻ��� �߸����׼� ��ȭ. �۰��� �ƿ��߸� ���','���� ������ �๰�� ���ؼ� �ʵ��л��� ���� �� ����л� �� ����ġ');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'23',2,'��Ž���ڳ�_1��2ȭ','�������� �ڳ��̶�� ������ ����Ͽ� �Ҳ�ģ���� ���� �ƹ����� ��ϴ� Ž���繫�ҿ���','���� ��� ����� �ذ��ϴ� �̾߱⸦ �ٷ�� �ִ�');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'24',1,'��ũ������_1��1ȭ','�巡�￡�� �����޴� ��� Ʈ�纣�ϾƸ� ����','��ġ�Ǿ� �� �߿� �絵 �豳�� ����,����!');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'24',2,'��ũ������_1��2ȭ','������ ������� �������� �Ҿ���� �׿��� ���� ���� �ƹ��͵� ����.','�� ���� ������ ���� ���� ������ ��, ��ũ ������!');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'25',1,'������ ���ƿԴ�_1��1ȭ','�����ϴ� ��Ӵ� �������� �����̰� �;���,','���̿��� ������ ������ �ʿ��ߴ�.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'25',2,'������ ���ƿԴ�_1��2ȭ','������ �ʿ信 ���� ���۵� ��� ��ȥ.','���̿��� ������ �Ʒ����� ������� �ɸ´� ������� �Ǿ���.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'26',1,'õ�����_1��1ȭ','¦����� ����� ��ȭ���� ȣ�� ���簡 �� �и� ������','�쿩���� ���� ������ ������� �ٴϴ� �б��� �����ϰ� �ǰ�');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'26',2,'õ�����_1��2ȭ','�� ������ ������ ������ �����ϰ� ������ �������κ���','������ ���ϸ� ����� �����ϴ� �̾߱��̴�');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'27',1,'�ҳ�Ž�� ������_1��1ȭ','���ΰ��� ���ÿ��� ��翡 ȣ���������� �ſ� �ð��� ��ǰ��','������ �γ��� ����ť 180 ������,');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'27',2,'�ҳ�Ž�� ������_1��2ȭ','�Ϻ� �������⿡�� ����ġ�� ������ ���λ���� ��Ž���̾��� �Ҿƹ����� �̸��� ���� �ɰ�','���������� ��� Ǯ�� ������� ��� ������ �� �ȿ� �ִٴ� ���� ������ ������ ��� �����̴�');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'28',1,'�޸������_1��1ȭ','����ʹ� �ٸ� ���� Ȧ �÷���.','������� �� ������ �Ű��ϰ� ������ �Ͱ��ϴ� ���� Ȧ �÷����� ���� ������ ��ȯ���Ѵ�.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'28',2,'�޸������_1��2ȭ','���� �쿩������ ��ġ�� ������ ���� �����µ� ����������, ','Ȧ �÷��ο��� Ȱ���� 10���� ������ �̹� �ʹ����� ���� ���ŷ� ����� ���¿���.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'29',1,'�ܿ﹮�汸_1��1ȭ','������� ��� ���� ���� Ʈ��츶�� ���� ���ִ�','Ư�� ������� ���迡�� ū ������� �ִ�.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'29',2,'�ܿ﹮�汸_1��2ȭ','������� ������ �ص��� �Ⱦ��Ѵ�.','����ִ� ����� �� ��üó�� �������ٴ� ������ ���� ���ִ� ���ΰ� ������ ������.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'30',1,'����������_1��1ȭ','����� ������ �޲�����, �Ѽ��� ������ ���ƴ�.','���տ��� ���� ���� ������ ������ �Ȱ� �������� �������µ�.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'30',2,'����������_1��2ȭ','������, �� ȭ���� ����? ����, �� ���� �����̴�?��','���ϰ� �Ҿ��ϳ�.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'31',1,'�ȷ�Ȩ��_1��1ȭ','���� ���ǰ� �ӽ��� ���￡�� ����� �ѻ��� �԰�','�������Ͻ�ź���� ��ƼǪ���� �ɷ� �ᱹ �ٽ� �������� ��������.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'31',2,'�ȷ�Ȩ��_1��2ȭ','�ѵ����� ���뿡�� ������ �������� ȣ�ڿ��� �����ϴ� �ӽ���','��Ƶ� ���� ���� �������� ������ �漼�� �ϼ����� ã�Եȴ�. ');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'32',1,'���¶�����_1��1ȭ','�ڽ��� ���� �Ƴ����� ������ ������ ������ �Ͼ ���￡��',' ���� ���ΰ� ������ 10�� ������ �ǵ��ư� �����. ');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'32',2,'���¶�����_1��2ȭ','�׳����� ��ٰ� �����Ϳ� �������� ���� �ٺ�����','�λ��̾��� ���ſʹ� �޸� �ֺ��� �����ϸ� �ڽ��� �׾��� ������ �������� ���м����ϱ� �����Ѵ�.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'33',1,'�츮�� ������� ����_1��1ȭ','����б��������� 10���̻� �� ���λ��̷� ������ ���ֿ� ����.','�� ���� ���ΰ� ù����̿���.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'33',2,'�츮�� ������� ����_1��2ȭ','��� �������̿��µ�  ���ִ� ���? ���ִ� ��.','�Ƹ��� ���ְ� �� �α��ִ� ��찡 �ƴϿ��� �ʹ�.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'34',1,'���밭ȣ_1��1ȭ','�̾߱��� ������ �ű����� ��������� ���̱ͺ����� ���� ���۵˴ϴ�. ','���ΰ��� �̸��� ��ȣ�̰�, �ű��ͳ����� ��н����� �ϵ��� ó���ϴ� �ڵ��Դϴ�.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'34',2,'���밭ȣ_1��2ȭ','Ư���� �ű��Ͱ� �븳�ϰ� �ִ� ��Ƿ��� �����ϱ� ���� ��� ������ ���� ���Եǰ�, ','�� ���ε��� �����ϴµ� ���ԵǴ� ���θ��� �뺴���̶�� ���� �ǰڽ��ϴ�.');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'35',1,'Y�Ǻ��_1��1ȭ','���� ���� �ٴٿ��� ���Ҹ�Ǿ��� ��ġ���� �鸸������ ��ũ ����','�� �ý��� �߰ߵǸ鼭,');                                                
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content1,free_content2) values
                        (free_num.nextval,'35',2,'Y�Ǻ��_1��2ȭ','���� ��ΰ� ��¥ �������� ������ ���� ������ ����� ���۵ȴ�',' ��ũ ���Ͱ� ���� �� ��ũ ������ ���� ���и��� �� �����ڿ��� ���� �̼� ����� �߻��Ѵ�.');                                                               
                        
