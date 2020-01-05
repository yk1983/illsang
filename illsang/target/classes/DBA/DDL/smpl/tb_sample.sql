-- 데이터베이스 생성
CREATE DATABASE CAFEILLSANG;

-- 데이터베이스 사용 선언
USE CAFEILLSANG;

-- 테이블 생성
CREATE TABLE TB_SAMPLE
(
    USER_NO         INT NOT NULL
,   USER_NAME       CHAR(30)
,   USER_EMAIL      CHAR(30)
,   USER_PASSWD     CHAR(20)
,   REG_ID          INT
,   REG_DTM         DATETIME DEFAULT CURRENT_TIMESTAMP
,   UPD_ID          INT
,   UPD_DTM         DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- SAMPLE 데이터 생성
INSERT INTO TB_SAMPLE VALUES(1, 'kim yong', 'yong1093@naver.com', 'illsang1234', 1, now(), 1, now());