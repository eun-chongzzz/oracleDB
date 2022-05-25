INSERT INTO novel_tbl (novel_num, novel_writer, user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval, '놀마', 'user20', '미친 중독', 10, 'romance', 'Mon');

INSERT INTO novel_tbl (novel_num, novel_writer, user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval, '백묘', 'user20', '꽃이 삼킨 짐승', 10, 'romance', 'Mon');

INSERT INTO novel_tbl (novel_num, novel_writer, user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval, '죽음을 희망합니다', 'user20', '죽음을 희망합니다', 10, 'romance', 'Mon');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'이흰','user20','베이비폭군', 5, 'romance', 'Tue'); 

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'박수정','user20','어린상사', 5, 'romance', 'Tue');                     

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                    (novel_num.nextval,'코양희','user20','후궁으로 깨어나다', 5, 'romance', 'Tue');                     
                    
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'플아다','user20','날 닮은 아이',10, 'romance', 'Wen');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'알파타르트','user20','하렘의 남자들',10, 'romance', 'Wen');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'빠양이','user20','강제맞선',10, 'romance', 'Wen');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'오윤화','user20','남편과 이혼하겠습니다',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'달콤한홍차', 'user20', '신랑이 바뀐 나의 영혼',10, 'fantasy', 'Thu');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'로즈빈','user20','사랑같은건 처음',10, 'fantasy', 'Thu');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'백묘','user20','꽃이 삼킨 짐승',10, 'fantasy', 'Fri');

INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'문백경','user20','역대급 영지 설계사',10, 'fantasy', 'Fri');
                        
INSERT INTO novel_tbl (novel_num, novel_writer,user_id, novel_title, novel_tsnum, novel_category, novel_week) values
                        (novel_num.nextval,'꽃제이','user20','더캐슬',10, 'fantasy', 'Fri');
                        
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2)
(select paid_num.nextval, novel_num, paid_snum, paid_title, paid_content1,paid_content2 from paid_tbl);                       

select * from paid_tbl;
select * from novel_tbl;

-- 페이징 처리 구문                  
select * from (SELECT * FROM
( SELECT /*+ INDEX_DESC(paid_tbl pk_paid) */
  ROWNUM rn, paid_tbl.* FROM paid_tbl WHERE rownum <= 20)
    WHERE rn > 10) where novel_num = 4;
    
select count(*) from paid_tbl where novel_num = 5;
                        
                        commit;
select * from novel_tbl;

-- ★ DB에 적힌 대로 적재했기때문에 novel_num은 변경해주셔야 할 수도 있습니다.
-- content 내용은 너무 짧으면 좀 더 복붙하세요.
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '1', 1, '미친 중독 1화', '미친미친미친미친미친미친', '미친미친미친미친미친미친');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '1', 2, '미친 중독 2화', '미친2미친2미친2미친2미친2미친2', '미친2미친2미친2미친2미친2미친2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '2', 1, '꽃이 삼킨 짐승 1화', '짐승짐승짐승짐승짐승', '짐승짐승짐승짐승짐승');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '2', 2, '꽃이 삼킨 짐승 2화', '짐승2짐승2짐승2짐승2', '짐승2짐승2짐승2짐승2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 1, '죽음을 희망합니다 1화', '죽음죽음죽음죽음죽음', '죽음죽음죽음죽음죽음');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '3', 2, '죽음을 희망합니다 2화', '죽음2죽음2죽음2죽음2', '죽음2죽음2죽음2죽음2');

INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '4', 1, '베이비폭군 1화', '폭군폭군폭군폭군', '폭군폭군폭군폭군');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '4', 2, '베이비폭군 2화', '폭군2폭군2폭군2폭군2', '폭군2폭군2폭군2폭군2');

INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '5', 1, '어린상사 1화', '상사상사상사상사', '상사상사상사상사');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '5', 2, '어린상사 2화', '상사2상사2상사2상사2', '상사2상사2상사2상사2');

INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '6', 1, '후궁으로 깨어나다 1화', '후궁후궁후궁후궁', '후궁후궁후궁후궁');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '6', 2, '후궁으로 깨어나다 2화', '후궁2후궁2후궁2후궁2', '후궁2후궁2후궁2후궁2');
commit;
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '7', 1, '날 닮은 아이 1화', '아이아이아이아이', '아이아이아이아이');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '7', 2, '날 닮은 아이 2화', '아이2아이2아이2아이2', '아이2아이2아이2아이2');

INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '8', 1, '하렘의 남자들 1화', '하렘하렘하렘하렘', '하렘하렘하렘하렘');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '8', 2, '하렘의 남자들 2화', '하렘2하렘2하렘2하렘2', '하렘2하렘2하렘2하렘2');
                 
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '9', 1, '강제맞선 1화', '강제맞선강제맞선강제맞선', '강제맞선강제맞선강제맞선');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '9', 2, '강제맞선 2화', '강제맞선2강제맞선2강제맞선2', '강제맞선2강제맞선2강제맞선2');    
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '10', 1, '남편과 이혼하겠습니다 1화', '남편남편남편남편', '남편남편남편남편');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '10', 2, '남편과 이혼하겠습니다 2화', '남편2남편2남편2남편2', '남편2남편2남편2남편2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '11', 1, '신랑이 바뀐 나의 영혼 1화', '신랑신랑신랑신랑', '신랑신랑신랑신랑');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '11', 2, '신랑이 바뀐 나의 영혼 2화', '신랑2신랑2신랑2신랑2', '신랑2신랑2신랑2신랑2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '12', 1, '사랑같은건 처음 1화', '처음처음처음처음', '처음처음처음처음');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '12', 2, '사랑같은건 처음 2화', '처음2처음2처음2처음2', '처음2처음2처음2처음2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '13', 1, '꽃이 삼킨 짐승 1화', '짐승짐승짐승짐승', '짐승짐승짐승짐승');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '13', 2, '꽃이 삼킨 짐승 2화', '짐승2짐승2짐승2짐승2', '짐승2짐승2짐승2짐승2');
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '14', 1, '역대급 영지 설계사 1화', '설계사설계사설계사', '설계사설계사설계사');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '14', 2, '역대급 영지 설계사 2화', '설계사2설계사2설계사2', '설계사2설계사2설계사2'); 
                        
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '15', 1, '더캐슬 1화', '더캐슬더캐슬더캐슬', '더캐슬더캐슬더캐슬');
INSERT INTO paid_tbl (paid_num, novel_num, paid_snum, paid_title, paid_content1,paid_content2) values
                        (paid_num.nextval, '15', 2, '더캐슬 2화', '더캐슬2더캐슬2더캐슬2', '더캐슬2더캐슬2더캐슬2'); 
                        
                                    
                        commit;
                        
