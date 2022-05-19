INSERT INTO novel_tbl (novel_num, novel_writer, user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval, '놀마', 'user', '미친 중독', 10, 'romance', 'Mon');

INSERT INTO novel_tbl (novel_num, novel_writer, user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval, '백묘', 'user', '꽃이 삼킨 짐승', 10, 'romance', 'Mon');

INSERT INTO novel_tbl (novel_num, novel_writer, user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval, '죽음을 희망합니다', 'user', '죽음을 희망합니다', 10, 'romance', 'Mon');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'이흰','user','베이비폭군', 5, 'romance', 'Tue'); 

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'박수정','user','어린상사', 5, 'romance', 'Tue');                     

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'코양희','user','후궁으로 깨어나다', 5, 'romance', 'Tue');                     
                    
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'플아다','user','날 닮은 아이',10, 'romance', 'Wen');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'알파타르트','user','하렘의 남자들',10, 'romance', 'Wen');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'빠양이','user','강제맞선',10, 'romance', 'Wen');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'오윤화','user','남편과 이혼하겠습니다',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'달콤한홍차', 'user', '신랑이 바뀐 나의 영혼',10, 'fantasy', 'Thu');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'로즈빈','user','사랑같은건 처음',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'백묘','user','꽃이 삼킨 짐승',10, 'fantasy', 'Fri');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'문백경','user','역대급 영지 설계사',10, 'fantasy', 'Fri');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'꽃제이','user','더캐슬',10, 'fantasy', 'Fri');
                        
                        
                        
                        
                        
                        commit;
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '1', 3, '월요일 웹툰 1편', '월요일 웹툰 1편 내용', '월요일 웹툰 1편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 3, '두번째 화요일 웹툰 3편', '두번째 화요일 웹툰 3편 내용', '화요일 웹툰 1편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 3, '수요일 웹툰 1편', '수요일 웹툰 1편 내용', '수요일 웹툰 1편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '4', 3, '목요일 웹툰 1편', '목요일 웹툰 1편 내용', '목요일 웹툰 1편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '5', 3, '금요일 웹툰 1편', '금요일 웹툰 1편 내용', '금요일 웹툰 1편 내용');
                        
                        commit;
                        
