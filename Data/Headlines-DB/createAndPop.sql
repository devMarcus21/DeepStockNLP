CREATE TABLE google (
Date		varchar(15) NOT NULL,
Label		varchar(1) NOT NULL,
top1		varchar(250) NULL, 
top2		varchar(250) NULL,
top3		varchar(250) NULL,
top4		varchar(250) NULL,
top5		varchar(250) NULL,
top6		varchar(250) NULL,
top7		varchar(250) NULL,
top8		varchar(250) NULL,
top9		varchar(250) NULL,
top10		varchar(250) NULL,
top11		varchar(250) NULL,
top12		varchar(250) NULL,
top13		varchar(250) NULL,
top14		varchar(250) NULL,
top15		varchar(250) NULL,
top16		varchar(250) NULL,
top17		varchar(250) NULL,
top18		varchar(250) NULL,
top19		varchar(250) NULL,
top20		varchar(250) NULL,
top21		varchar(250) NULL,
top22		varchar(250) NULL,
top23		varchar(250) NULL,
top24		varchar(250) NULL,
top25		varchar(250) NULL,
top26		varchar(250) NULL,
top27		varchar(250) NULL,
top28		varchar(250) NULL,
top29		varchar(250) NULL,
top30		varchar(250) NULL,
top31		varchar(250) NULL,
top32		varchar(250) NULL,
top33		varchar(250) NULL,
top34 		varchar(250) NULL,
top35 		varchar(250) NULL,
PRIMARY KEY ( Date )
);


LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/GOOGL-2021-input-5-5-21.csv' 
INTO TABLE google
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24,	top25,	top26,	top27,	top28,	top29,	top30,	top31,	top32,	top33,	top34,	top35
);

CREATE TABLE amazon (
	Date	VARCHAR(15) NOT NULL,
Label	VARCHAR(1) NOT NULL,
top1	VARCHAR(250) NULL,
top2	VARCHAR(250) NULL,
top3	VARCHAR(250) NULL,
top4	VARCHAR(250) NULL,
top5	VARCHAR(250) NULL,
top6	VARCHAR(250) NULL,
top7	VARCHAR(250) NULL,
top8	VARCHAR(250) NULL,
top9	VARCHAR(250) NULL,
top10	VARCHAR(250) NULL,
top11	VARCHAR(250) NULL,
top12	VARCHAR(250) NULL,
top13	VARCHAR(250) NULL,
top14	VARCHAR(250) NULL,
top15	VARCHAR(250) NULL,
top16	VARCHAR(250) NULL,
top17	VARCHAR(250) NULL,
top18	VARCHAR(250) NULL,
top19	VARCHAR(250) NULL,
top20	VARCHAR(250) NULL,
top21	VARCHAR(250) NULL,
top22	VARCHAR(250) NULL,
top23	VARCHAR(250) NULL,
top24	VARCHAR(250) NULL,
top25	VARCHAR(250) NULL,
top26	VARCHAR(250) NULL,
top27	VARCHAR(250) NULL,
top28	VARCHAR(250) NULL,
top29	VARCHAR(250) NULL,
top30	VARCHAR(250) NULL,
top31	VARCHAR(250) NULL,
top32	VARCHAR(250) NULL,
top33	VARCHAR(250) NULL,
top34	VARCHAR(250) NULL,
top35	VARCHAR(250) NULL,
top36	VARCHAR(250) NULL,
top37	VARCHAR(250) NULL,
top38	VARCHAR(250) NULL,
top39	VARCHAR(250) NULL,
top40	VARCHAR(250) NULL,
top41	VARCHAR(250) NULL,
top42	VARCHAR(250) NULL,
top43	VARCHAR(250) NULL,
top44	VARCHAR(250) NULL,
top45	VARCHAR(250) NULL,
top46	VARCHAR(250) NULL,
top47	VARCHAR(250) NULL,
top48	VARCHAR(250) NULL,
top49	VARCHAR(250) NULL,
top50	VARCHAR(250) NULL,
top51	VARCHAR(250) NULL,
top52 	VARCHAR(250) NULL,
top53	VARCHAR(250) NULL,
top54	VARCHAR(250) NULL,
top55	VARCHAR(250) NULL,
top56   VARCHAR(250) NULL,
PRIMARY KEY (Date)
);

LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/AMZN-2021-input-5-5-21.csv' 
INTO TABLE amazon
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24,	top25,	top26,	top27,	top28,	top29,	top30,	top31,	top32,	top33,	top34,	top35,	top36,	top37,	top38,	top39,	top40,	top41,	top42,	top43,	top44,	top45,	top46,	top47,	top48,	top49,	top50,	top51,	top52,	top53,	top54,	top55,	top56
);


CREATE TABLE apple (
Date	VARCHAR(15) NOT NULL,
Label	VARCHAR(1) NOT NULL,
top1	TEXT NULL,
top2	TEXT NULL,
top3	TEXT NULL,
top4	TEXT NULL,
top5	TEXT NULL,
top6	TEXT NULL,
top7	TEXT NULL,
top8	TEXT NULL,
top9	TEXT NULL,
top10	TEXT NULL,
top11	TEXT NULL,
top12	TEXT NULL,
top13	TEXT NULL,
top14	TEXT NULL,
top15	TEXT NULL,
top16	TEXT NULL,
top17	TEXT NULL,
top18	TEXT NULL,
top19	TEXT NULL,
top20	TEXT NULL,
top21	TEXT NULL,
top22	TEXT NULL,
top23	TEXT NULL,
top24	TEXT NULL,
top25	TEXT NULL,
top26	TEXT NULL,
top27	TEXT NULL,
top28	TEXT NULL,
top29	TEXT NULL,
top30	TEXT NULL,
top31	TEXT NULL,
top32	TEXT NULL,
top33	TEXT NULL,
top34	TEXT NULL,
top35	TEXT NULL,
top36	TEXT NULL,
top37	TEXT NULL,
top38	TEXT NULL,
top39	TEXT NULL,
top40	TEXT NULL,
top41	TEXT NULL,
top42	TEXT NULL,
top43	TEXT NULL,
top44	TEXT NULL,
top45	TEXT NULL,
top46	TEXT NULL,
top47	TEXT NULL,
top48	TEXT NULL,
top49	TEXT NULL,
top50	TEXT NULL,
top51	TEXT NULL,
top52	TEXT NULL,
top53	TEXT NULL,
top54	TEXT NULL,
top55	TEXT NULL,
top56	TEXT NULL,
top57	TEXT NULL,
top58	TEXT NULL,
top59	TEXT NULL,
top60	TEXT NULL,
top61	TEXT NULL,
top62	TEXT NULL,
top63	TEXT NULL,
top64	TEXT NULL,
top65	TEXT NULL,
top66	TEXT NULL,
top67	TEXT NULL,
top68	TEXT NULL,
top69	TEXT NULL,
Top70   TEXT NULL,
PRIMARY KEY (Date)
);


LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/AAPL-2021-input-5-5-21.csv' 
INTO TABLE apple
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24,	top25,	top26,	top27,	top28,	top29,	top30,	top31,	top32,	top33,	top34,	top35,	top36,	top37,	top38,	top39,	top40,	top41,	top42,	top43,	top44,	top45,	top46,	top47,	top48,	top49,	top50,	top51,	top52,	top53,	top54,	top55,	top56,	top57,	top58,	top59,	top60,	top61,	top62,	top63,	top64,	top65,	top66,	top67,	top68,	top69,	top70
);

CREATE TABLE boeing(
	Date	VARCHAR(15) NOT NULL,
Label	VARCHAR(1) NOT NULL,
top1	VARCHAR(250) NULL,
top2	VARCHAR(250) NULL,
top3	VARCHAR(250) NULL,
top4	VARCHAR(250) NULL,
top5	VARCHAR(250) NULL,
top6	VARCHAR(250) NULL,
top7	VARCHAR(250) NULL,
top8	VARCHAR(250) NULL,
top9	VARCHAR(250) NULL,
top10	VARCHAR(250) NULL,
top11	VARCHAR(250) NULL,
top12	VARCHAR(250) NULL,
top13	VARCHAR(250) NULL,
top14	VARCHAR(250) NULL,
top15	VARCHAR(250) NULL,
top16	VARCHAR(250) NULL,
top17	VARCHAR(250) NULL,
top18	VARCHAR(250) NULL,
top19	VARCHAR(250) NULL,
top20	VARCHAR(250) NULL,
top21	VARCHAR(250) NULL,
top22	VARCHAR(250) NULL,
top23	VARCHAR(250) NULL,
top24	VARCHAR(250) NULL,
top25	VARCHAR(250) NULL,
top26	VARCHAR(250) NULL,
top27	VARCHAR(250) NULL,
top28	VARCHAR(250) NULL,
top29	VARCHAR(250) NULL,
top30	VARCHAR(250) NULL,
top31	VARCHAR(250) NULL,
top32	VARCHAR(250) NULL,
top33	VARCHAR(250) NULL,
top34	VARCHAR(250) NULL,
top35	VARCHAR(250) NULL,
top36	VARCHAR(250) NULL,
top37	VARCHAR(250) NULL,
top38	VARCHAR(250) NULL,
top39	VARCHAR(250) NULL,
top40	VARCHAR(250) NULL,
top41	VARCHAR(250) NULL,
top42	VARCHAR(250) NULL,
top43	VARCHAR(250) NULL,
top44	VARCHAR(250) NULL,
top45	VARCHAR(250) NULL,
top46	VARCHAR(250) NULL,
top47	VARCHAR(250) NULL,
top48	VARCHAR(250) NULL,
top49	VARCHAR(250) NULL,
top50	VARCHAR(250) NULL,
top51	VARCHAR(250) NULL,
top52	VARCHAR(250) NULL,
top53	VARCHAR(250) NULL,
top54	VARCHAR(250) NULL,
	PRIMARY KEY (Date)
);


LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/BA-2021-input-5-5-21.csv' 
INTO TABLE boeing
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24,	top25,	top26,	top27,	top28,	top29,	top30,	top31,	top32,	top33,	top34,	top35,	top36,	top37,	top38,	top39,	top40,	top41,	top42,	top43,	top44,	top45,	top46,	top47,	top48,	top49,	top50,	top51,	top52,	top53,	top54
);

CREATE TABLE dell(
	Date	VARCHAR(15) NOT NULL,
Label	VARCHAR(1) NOT NULL,
top1	VARCHAR(250) NULL,
top2	VARCHAR(250) NULL,
top3	VARCHAR(250) NULL,
top4	VARCHAR(250) NULL,
top5	VARCHAR(250) NULL,
top6	VARCHAR(250) NULL,
top7	VARCHAR(250) NULL,
top8	VARCHAR(250) NULL,
top9	VARCHAR(250) NULL,
top10	VARCHAR(250) NULL,
top11	VARCHAR(250) NULL,
top12	VARCHAR(250) NULL,
top13	VARCHAR(250) NULL,
top14	VARCHAR(250) NULL,
top15	VARCHAR(250) NULL,
top16	VARCHAR(250) NULL,
top17	VARCHAR(250) NULL,
top18	VARCHAR(250) NULL,
top19	VARCHAR(250) NULL,
top20	VARCHAR(250) NULL,
top21	VARCHAR(250) NULL,
top22	VARCHAR(250) NULL,
top23	VARCHAR(250) NULL,
top24   VARCHAR(250) NULL,
PRIMARY KEY (Date)
);

LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/DELL-2021-input-5-5-21.csv' 
INTO TABLE dell
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24
);


CREATE TABLE ford(
	Date	VARCHAR(15) NOT NULL,
Label	VARCHAR(1) NOT NULL,
top1	VARCHAR(250) NULL, 
top2	VARCHAR(250) NULL,
top3	VARCHAR(250) NULL,
top4	VARCHAR(250) NULL,
top5	VARCHAR(250) NULL,
top6	VARCHAR(250) NULL,
top7	VARCHAR(250) NULL,
top8	VARCHAR(250) NULL,
top9	VARCHAR(250) NULL,
top10	VARCHAR(250) NULL,
top11	VARCHAR(250) NULL,
top12	VARCHAR(250) NULL,
top13	VARCHAR(250) NULL,
top14	VARCHAR(250) NULL,
top15	VARCHAR(250) NULL,
top16	VARCHAR(250) NULL,
top17	VARCHAR(250) NULL,
top18	VARCHAR(250) NULL,
top19	VARCHAR(250) NULL,
top20	VARCHAR(250) NULL,
top21	VARCHAR(250) NULL,
top22	VARCHAR(250) NULL,
top23	VARCHAR(250) NULL,
top24	VARCHAR(250) NULL,
top25	VARCHAR(250) NULL,
PRIMARY KEY (Date)
);

LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/F-2021-input-5-5-21.csv' 
INTO TABLE ford
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24,	top25
);

CREATE TABLE microsoft(
	Date	VARCHAR(15) NOT NULL,
Label	VARCHAR(1) NOT NULL,
top1	VARCHAR(250) NULL,
top2	VARCHAR(250) NULL,
top3	VARCHAR(250) NULL,
top4	VARCHAR(250) NULL,
top5	VARCHAR(250) NULL,
top6	VARCHAR(250) NULL,
top7	VARCHAR(250) NULL,
top8	VARCHAR(250) NULL,
top9	VARCHAR(250) NULL,
top10	VARCHAR(250) NULL,
top11	VARCHAR(250) NULL,
top12	VARCHAR(250) NULL,
top13	VARCHAR(250) NULL,
top14	VARCHAR(250) NULL,
top15	VARCHAR(250) NULL,
top16	VARCHAR(250) NULL,
top17	VARCHAR(250) NULL,
top18	VARCHAR(250) NULL,
top19	VARCHAR(250) NULL,
top20	VARCHAR(250) NULL,
top21	VARCHAR(250) NULL,
top22	VARCHAR(250) NULL,
top23	VARCHAR(250) NULL,
top24	VARCHAR(250) NULL,
top25	VARCHAR(250) NULL,
top26	VARCHAR(250) NULL,
top27	VARCHAR(250) NULL,
top28	VARCHAR(250) NULL,
top29	VARCHAR(250) NULL,
top30	VARCHAR(250) NULL,
top31	VARCHAR(250) NULL,
top32	VARCHAR(250) NULL,
top33	VARCHAR(250) NULL,
top34	VARCHAR(250) NULL,
top35	VARCHAR(250) NULL,
top36	VARCHAR(250) NULL,
top37	VARCHAR(250) NULL,
top38	VARCHAR(250) NULL,
top39	VARCHAR(250) NULL,
top40	VARCHAR(250) NULL,
top41	VARCHAR(250) NULL,
top42	VARCHAR(250) NULL,
top43	VARCHAR(250) NULL,
top44	VARCHAR(250) NULL,
top45	VARCHAR(250) NULL,
top46	VARCHAR(250) NULL,
PRIMARY KEY (Date)
);

LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/MSFT-2021-input-5-5-21.csv' 
INTO TABLE microsoft
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24,	top25,	top26,	top27,	top28,	top29,	top30,	top31,	top32,	top33,	top34,	top35,	top36,	top37,	top38,	top39,	top40,	top41,	top42,	top43,	top44,	top45,	top46
);

CREATE TABLE tesla(
Date	VARCHAR(15) NOT NULL,
Label	VARCHAR(1) NOT NULL,
top1	VARCHAR(250) NULL,
top2	VARCHAR(250) NULL,
top3	VARCHAR(250) NULL,
top4	VARCHAR(250) NULL,
top5	VARCHAR(250) NULL,
top6	VARCHAR(250) NULL,
top7	VARCHAR(250) NULL,
top8	VARCHAR(250) NULL,
top9	VARCHAR(250) NULL,
top10	VARCHAR(250) NULL,
top11	VARCHAR(250) NULL,
top12	VARCHAR(250) NULL,
top13	VARCHAR(250) NULL,
top14	VARCHAR(250) NULL,
top15	VARCHAR(250) NULL,
top16	VARCHAR(250) NULL,
top17	VARCHAR(250) NULL,
top18	VARCHAR(250) NULL,
top19	VARCHAR(250) NULL,
top20	VARCHAR(250) NULL,
top21	VARCHAR(250) NULL,
top22	VARCHAR(250) NULL,
top23	VARCHAR(250) NULL,
top24	VARCHAR(250) NULL,
top25	VARCHAR(250) NULL,
top26	VARCHAR(250) NULL,
top27	VARCHAR(250) NULL,
top28	VARCHAR(250) NULL,
top29	VARCHAR(250) NULL,
top30	VARCHAR(250) NULL,
top31	VARCHAR(250) NULL,
top32	VARCHAR(250) NULL,
top33	VARCHAR(250) NULL,
top34	VARCHAR(250) NULL,
top35	VARCHAR(250) NULL,
top36	VARCHAR(250) NULL,
top37	VARCHAR(250) NULL,
top38	VARCHAR(250) NULL,
top39	VARCHAR(250) NULL,
top40	VARCHAR(250) NULL,
top41	VARCHAR(250) NULL,
top42	VARCHAR(250) NULL,
top43	VARCHAR(250) NULL,
top44	VARCHAR(250) NULL,
top45	VARCHAR(250) NULL,
top46	VARCHAR(250) NULL,
top47	VARCHAR(250) NULL,
top48	VARCHAR(250) NULL,
top49	VARCHAR(250) NULL,
top50	VARCHAR(250) NULL,
top51	VARCHAR(250) NULL,
top52	VARCHAR(250) NULL,
top53	VARCHAR(250) NULL,
top54	VARCHAR(250) NULL,
top55	VARCHAR(250) NULL,
top56	VARCHAR(250) NULL,
top57	VARCHAR(250) NULL,
top58	VARCHAR(250) NULL,
top59	VARCHAR(250) NULL,
top60	VARCHAR(250) NULL,
top61	VARCHAR(250) NULL,
	PRIMARY KEY (Date)
);


LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/TSLA-2021-input-5-5-21.csv' 
INTO TABLE tesla
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24,	top25,	top26,	top27,	top28,	top29,	top30,	top31,	top32,	top33,	top34,	top35,	top36,	top37,	top38,	top39,	top40,	top41,	top42,	top43,	top44,	top45,	top46,	top47,	top48,	top49,	top50,	top51,	top52,	top53,	top54,	top55,	top56,	top57,	top58,	top59,	top60,	top61
);

CREATE TABLE target(
	Date	VARCHAR(15) NOT NULL,
Label	VARCHAR(1) NOT NULL,
top1	VARCHAR(250) NULL,
top2	VARCHAR(250) NULL,
top3	VARCHAR(250) NULL,
top4	VARCHAR(250) NULL,
top5	VARCHAR(250) NULL,
top6	VARCHAR(250) NULL,
top7	VARCHAR(250) NULL,
top8	VARCHAR(250) NULL,
top9	VARCHAR(250) NULL,
top10	VARCHAR(250) NULL,
top11	VARCHAR(250) NULL,
top12	VARCHAR(250) NULL,
top13	VARCHAR(250) NULL,
top14	VARCHAR(250) NULL,
top15	VARCHAR(250) NULL,
top16	VARCHAR(250) NULL,
top17	VARCHAR(250) NULL,
top18	VARCHAR(250) NULL,
top19	VARCHAR(250) NULL,
top20	VARCHAR(250) NULL,
top21	VARCHAR(250) NULL,
top22	VARCHAR(250) NULL,
top23	VARCHAR(250) NULL,
top24	VARCHAR(250) NULL,
top25	VARCHAR(250) NULL,
top26	VARCHAR(250) NULL,
top27	VARCHAR(250) NULL,
top28	VARCHAR(250) NULL,
top29	VARCHAR(250) NULL,
PRIMARY KEY (Date)
);

LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/TGT-2021-input-5-5-21.csv' 
INTO TABLE target
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24,	top25,	top26,	top27,	top28,	top29
);

CREATE TABLE walmart(
	Date	VARCHAR(15) NOT NULL,
Label	VARCHAR(1) NOT NULL,
top1	VARCHAR(250) NULL,
top2	VARCHAR(250) NULL,
top3	VARCHAR(250) NULL,
top4	VARCHAR(250) NULL,
top5	VARCHAR(250) NULL,
top6	VARCHAR(250) NULL,
top7	VARCHAR(250) NULL,
top8	VARCHAR(250) NULL,
top9	VARCHAR(250) NULL,
top10	VARCHAR(250) NULL,
top11	VARCHAR(250) NULL,
top12	VARCHAR(250) NULL,
top13	VARCHAR(250) NULL,
top14	VARCHAR(250) NULL,
top15	VARCHAR(250) NULL,
top16	VARCHAR(250) NULL,
top17	VARCHAR(250) NULL,
top18	VARCHAR(250) NULL,
top19	VARCHAR(250) NULL,
top20	VARCHAR(250) NULL,
top21	VARCHAR(250) NULL,
top22	VARCHAR(250) NULL,
top23	VARCHAR(250) NULL,
top24	VARCHAR(250) NULL,
top25	VARCHAR(250) NULL,
top26	VARCHAR(250) NULL,
top27	VARCHAR(250) NULL,
top28	VARCHAR(250) NULL,
top29	VARCHAR(250) NULL,
top30	VARCHAR(250) NULL,
top31	VARCHAR(250) NULL,
top32	VARCHAR(250) NULL,
top33	VARCHAR(250) NULL,
top34	VARCHAR(250) NULL,
top35	VARCHAR(250) NULL,
top36	VARCHAR(250) NULL,
top37	VARCHAR(250) NULL,
top38	VARCHAR(250) NULL,
top39	VARCHAR(250) NULL,
top40	VARCHAR(250) NULL,
top41	VARCHAR(250) NULL,
top42	VARCHAR(250) NULL,
top43	VARCHAR(250) NULL,
top44	VARCHAR(250) NULL,
top45	VARCHAR(250) NULL,
top46	VARCHAR(250) NULL,
top47	VARCHAR(250) NULL,
top48	VARCHAR(250) NULL,
top49	VARCHAR(250) NULL,
top50	VARCHAR(250) NULL,
top51	VARCHAR(250) NULL,
top52	VARCHAR(250) NULL,
top53	VARCHAR(250) NULL,
top54	VARCHAR(250) NULL,
top55	VARCHAR(250) NULL,
top56	VARCHAR(250) NULL,
top57	VARCHAR(250) NULL,
PRIMARY KEY (Date)
);

LOAD DATA LOCAL INFILE 'DeepStockNLP/Data/Headlines-DB/WMT-2021-input-5-5-21.csv' 
INTO TABLE walmart
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS (Date,	Label,	top1,	top2,	top3,	top4,	top5,	top6,	top7,	top8,	top9,	top10,	top11,	top12,	top13,	top14,	top15,	top16,	top17,	top18,	top19,	top20,	top21,	top22,	top23,	top24,	top25,	top26,	top27,	top28,	top29,	top30,	top31,	top32,	top33,	top34,	top35,	top36,	top37,	top38,	top39,	top40,	top41,	top42,	top43,	top44,	top45,	top46,	top47,	top48,	top49,	top50,	top51,	top52,	top53,	top54,	top55,	top56,	top57
);








following apple''s launch of privacy labels, google to add a ‘safet
y' section in google play

