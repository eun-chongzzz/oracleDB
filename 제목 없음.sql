INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'월요일작가','월요일 웹툰', 10, 'wuxia', 'Mon');
                        
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'화요일작가','화요일 웹툰', 10, 'romance', 'Tue');
                    
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'수요일작가','수요일 웹툰',10, 'wuxia', 'Wen');

INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'목요일작가','목요일 웹툰',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'금요일작가','금요일 웹툰',10, 'fantasy', 'Fri');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '1', 3, '월요일 웹툰 3편', '월요일 웹툰 3편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '2', 3, '화요일 웹툰 3편', '화요일 웹툰 3편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '3', 3, '수요일 웹툰 3편', '수요일 웹툰 3편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '4', 3, '목요일 웹툰 3편', '목요일 웹툰 3편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content) values
                        (paid_num.nextval, '5', 3, '금요일 웹툰 3편', '금요일 웹툰 3편 내용');
                        
                        commit;