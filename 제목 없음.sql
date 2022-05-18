INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'월요일작가','user','월요일 웹툰', 10, 'wuxia', 'Mon');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'화요일2작가','user','화요일 웹툰2', 5, 'wuxia', 'Tue'); 
                    
                    
                    
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'수요일작가','user','수요일 웹툰',10, 'wuxia', 'Wen');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'목요일작가','user','목요일 웹툰',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'금요일작가','user','금요일 웹툰',10, 'fantasy', 'Fri');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '1', 3, '월요일 웹툰 1편', '월요일 웹툰 1편 내용', '월요일 웹툰 1편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '2', 3, '화요일 웹툰 1편', '화요일 웹툰 1편 내용', '화요일 웹툰 1편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 3, '수요일 웹툰 1편', '수요일 웹툰 1편 내용', '수요일 웹툰 1편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '4', 3, '목요일 웹툰 1편', '목요일 웹툰 1편 내용', '목요일 웹툰 1편 내용');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '5', 3, '금요일 웹툰 1편', '금요일 웹툰 1편 내용', '금요일 웹툰 1편 내용');
                        
                        commit;
                        



-- ★판타지소설★ 
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'동주','내행운은 만렙이다',100, 'fantasy', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'글럼프','망나니 1왕자가 되었다',100, 'fantasy', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'추공','나 혼자만 레벨업',100, 'fantasy', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'룬드그린','악당이 살아가는법',100, 'fantasy', 'free');
-- ★로맨스소설★ 
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'최은경','현주효영',100, 'romance', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'이송','사랑을배우다',100, 'romance', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'김윤수','불면증',100, 'romance', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'박현아','사랑에 빠진 것처럼',100, 'romance', 'free');

-- ★무협소설★         
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'장영훈','절대강호',100, 'wuxia', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'태규','천라신조',100, 'wuxia', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'용대운','태극문',100, 'wuxia', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'전동조','묵향',100, 'wuxia', 'free');

-- ★추리소설★                                 
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'가와이간지','데드맨',100, 'detective', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'아오야마 고쇼','명탐정코난',100, 'detective', 'free');
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'키바야시 신','소년탐정 김전일',100, 'detective', 'free');                        
INSERT INTO novel_tbl (novel_num, novel_writer, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'B.A.패리스','비하인드 도어',100, 'detective', 'free'); 
                        
                        


INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '7',1,'망나니_제1장-1화','이미 클리어한 게임 속에 갇혔다.
                        그런데
                        이 [운빨망겜]에서 내 행운은 만렙이다.'); 
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '7',2,'망나니_제1장-2화','[세상의 끝]
세상에서 가장 유명한 게임 중 하나 지구와 비슷하게 제작된 하나의 세계에서 수십억의 인공지능 NPC가 존재하는, 최단기 >엔딩을 보기 위해서라도 게임시간으로 10년 이상 플레이가 필요한 게임.'); 
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '7',3,'망나니_제1장-3화','꿈인가 싶었다.
게임 속으로 들어오기라도 한 건가.
모든 가능성을 제외하고 남은 하나는, 아무리 말이 되지 않는 것이라도 진실이라 생각했다.
아무리 이성적으로 생각하더라도 이곳에 갖힌게 맞는 거 같았다.
52년을 플레이하면서 이 게임의 스토리를 되다 꿰고 있다.'); 
INSERT INTO free_tbl (free_num, novel_num, free_snum, free_title, free_content) values
                        (free_num.nextval, '7',4,'망나니_제1장-4화','끊임 없이 움직여야해

강해지고 세력을 얻고 힘을 키운다.

그래 난 썩은 물을 넘어선 석유급 플레이어니까.');                       

