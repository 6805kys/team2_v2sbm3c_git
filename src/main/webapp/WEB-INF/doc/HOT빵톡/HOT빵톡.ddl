/**********************************/
/* Table Name: HOT빵톡 */
/**********************************/
CREATE TABLE brtalk(
		talk_no    INT     NOT NULL     PRIMARY KEY,
		talk_id       CLOB          NOT NULL,
		talk_name VARCHAR(1000) NOT NULL,
		talk_post      CLOB         NOT NULL,
		recom NUMERIC(7) DEFAULT 0 NOT NULL,
		talk_view NUMERIC(7) NOT NULL,
		passwd VARCHAR(100) NOT NULL,
		talk_word VARCHAR(300),
		talk_crtime DATE NOT NULL,
		talk_mdtime DATE NOT NULL
);

COMMENT ON TABLE brtalk is 'HOT빵톡';
COMMENT ON COLUMN brtalk.talk_no is 'HOT빵톡글 번호';
COMMENT ON COLUMN brtalk.talk_id is '작성자ID';
COMMENT ON COLUMN brtalk.talk_name is 'HOT빵톡글 제목';
COMMENT ON COLUMN brtalk.talk_post is 'HOT빵톡글 내용';
COMMENT ON COLUMN brtalk.recom  is '추천수';
COMMENT ON COLUMN brtalk.talk_view is '조회수';
COMMENT ON COLUMN brtalk.passwd is '패스워드';
COMMENT ON COLUMN brtalk.talk_word is '검색어';
COMMENT ON COLUMN brtalk.talk_crtime is 'HOT빵톡글 작성일시';
COMMENT ON COLUMN brtalk.talk_mdtime is 'HOT빵톡글 수정일시';

CREATE SEQUENCE brtalk_seq
  START WITH 1                -- 시작 번호
  INCREMENT BY 1            -- 증가값
  MAXVALUE 9999999999  -- 최대값: 9999999999 --> NUMBER(10) 대응
  CACHE 2                        -- 2번은 메모리에서만 계산
  NOCYCLE;                      -- 다시 1부터 생성되는 것을 방지
  
  INSERT INTO brtalk(talk_no, talk_id, talk_name, talk_post, talk_view, recom, passwd, talk_word, talk_crtime, talk_mdtime)
VALUES (brtalk_seq.nextval, 'kd1', '서울 신사 가로수길 퀸아망 맛집!!!', '1. 신사동 가로수길에 있는 "비파티세리" 추천합니다.. ', 0, 0, 1234, '#퀸아망', sysdate, sysdate);

-- R(List)
SELECT talk_no, talk_id, talk_name, talk_post, talk_view, recom, passwd, talk_word, content_crtime, content_mdtime
FROM brtalk
ORDER BY talk_no;
      
-- R(Read)
SELECT talk_no, talk_id, talk_name, talk_post, talk_view, recom, passwd, talk_word, content_crtime, content_mdtime
FROM brtalk
WHERE talk_no=16;
      
-- U
UPDATE brtalk
SET content_name='빵의 성지 파리바게뜨 추천합니다!!'
WHERE content_no=16;

-- D
DELETE FROM brtalk
WHERE talk_no=16;