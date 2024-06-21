create table schedule(
name varchar(255),
start_date varchar(255),
end_date varchar(255),
hour varchar(255),
timezone varchar(255),
link varchar(255),
ppt varchar(255),
teacher varchar(255)
);

drop table schedule;
select * from schedule;

ALTER TABLE schedule MODIFY COLUMN link VARCHAR(255);


INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('CPP Beginner', 'March 12, 2024', 'March 27, 2024', '10:00am-11:00am', 'Asia/Yangon', 'https://meet.google.com/ygv-prec-ygb','/powerpoint/klevel3beer.pptx', 'Daw Chue Theingi Kyaw');
INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('CPP Intermediate', 'March 12, 2024', 'April 10, 2024', '11:00am-12:00am', 'Asia/Yangon', 'https://meet.google.com/zaf-itnt-vid','/powerpoint/klevel3glad.pptx','Daw Phyu Phyu Thant');
INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('CPP Advance', 'March 12, 2024', 'April 10, 2024', '1:00pm-2:00pm', 'Asia/Yangon', 'https://meet.google.com/fwr-oohz-rdd','/powerpoint/klevel4drink.pptx','Daw ThazinEaindra Bo');

INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('C Beginner', 'March 12, 2024', 'March 27, 2024', '10:00am-11:00am', 'Asia/Yangon', 'https://meet.google.com/ygv-prec-ygb','/powerpoint/klevel3beer.pptx', 'Daw Chue Theingi Kyaw');
select * from schedule;

INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('FrontendWebTech Beginner', 'March 12, 2024', 'March 27, 2024', '10:00am-11:00am', 'Asia/Yangon', 'https://meet.google.com/ygv-prec-ygb','/powerpoint/Section1(basic).pptx','Daw Chue Theingi Kyaw');
INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('FrontendWebTech Intermediate', 'March 12, 2024', 'April 10, 2024', '11:00am-12:00am', 'Asia/Yangon', 'https://meet.google.com/zaf-itnt-vid','/powerpoint/Section2.1(html_basic).pptx','Daw Phyu Phyu Thant');
INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('FrontendWebTech Advance', 'March 12, 2024', 'April 10, 2024', '1:00pm-2:00pm', 'Asia/Yangon', 'https://meet.google.com/fwr-oohz-rdd','/powerpoint/HSK3.pptx','Daw ThazinEaindra Bo');


delete from schedule where teacher="Daw Nwe Nwe Aye";

INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('Database Beginner', 'March 12, 2024', 'March 27, 2024', '10:00am-11:00am', 'Asia/Yangon', 'https://meet.google.com/ygv-prec-ygb','/powerpoint/Section4.1(js intro).pptx','Daw Chue Theingi Kyaw');
INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('Database Intermdediate', 'March 12, 2024', 'April 10, 2024', '11:00am-12:00am', 'Asia/Yangon', 'https://meet.google.com/zaf-itnt-vid','/powerpoint/Section4.2(js oper and loop).pptx','Daw Phyu Phyu Thant');
INSERT INTO schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) VALUES ('Database Advance', 'March 12, 2024', 'April 10, 2024', '1:00pm-2:00pm', 'Asia/Yangon', 'https://meet.google.com/fwr-oohz-rdd','/powerpoint/Section4.4(js fun and BOM).pptx','Daw ThazinEaindra Bo');

create table Admin(
email varchar(255),
password varchar(255),
name varchar(255)
);


ALTER TABLE Admin MODIFY COLUMN name VARCHAR(255);
ALTER TABLE Admin Add COLUMN name VARCHAR(30);

insert into Admin (email,password,name) values ("Admin@gmail.com","admin","Admin");

delete from Admin where password="admin1";

drop table Admin;
select * from Admin;

CREATE TABLE register (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    dob VARCHAR(255),
    gender VARCHAR(10),
    email VARCHAR(255),
    telephone VARCHAR(20),
    country VARCHAR(100),
    zip VARCHAR(20),
    profile_picture LONGBLOB
);

select * from register;
delete from register where username="Grace";
drop table register;

select * from progress;


CREATE TABLE content (
    cid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    about VARCHAR(100),
    ctype VARCHAR(100),
    level VARCHAR(100),
    video VARCHAR(100),
    ppt VARCHAR(100)
);

ALTER TABLE content
MODIFY COLUMN about VARCHAR(255);

ALTER TABLE content
MODIFY COLUMN ctype VARCHAR(255);

drop table content;

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('aete','is a verb form that comes from the verb au','Japan','level1', 'https://www.youtube.com/embed/OyI7_W249hY', '/powerpoint/japan1.pptx'),
('akumade mo','is a verb form that comes from the verb au', 'Japan', 'level1', 'https://www.youtube.com/embed/m3I0X77APq8', '/powerpoint/japan1.pptx'),
('an no jou','is a verb form that comes from the verb au', 'Japan', 'level1', 'https://www.youtube.com/embed/OyI7_W249hY', '/powerpoint/japan1.pptx'),
('arakajime','is a verb form that comes from the verb au', 'Japan', 'level1', 'https://www.youtube.com/embed/KTH4WgfPcAk', '/powerpoint/japan1.pptx'),
('atte no','is a verb form that comes from the verb au', 'Japan','level1', 'https://www.youtube.com/embed/4QfqJMzbRko', '/powerpoint/japan1.pptx'),
('ba koso','is a verb form that comes from the verb au', 'Japan','level1', 'https://www.youtube.com/embed/QkuSoj7gGu0', '/powerpoint/japan1.pptx'),
('ba sore made da / tara sore made da','is a verb form that comes from the verb au', 'Japan', 'level1', 'https://www.youtube.com/embed/rAlHG6OLk_k', '/powerpoint/japan1.pptx'),
('bekarazu / bekarazaru', 'is a verb form that comes from the verb au','Japan','level1', 'https://www.youtube.com/embed/v1fCIKGcIis', '/powerpoint/japan1.pptx'),
('beku', 'is a verb form that comes from the verb au','Japan', 'level1', 'https://www.youtube.com/embed/v1fCIKGcIis', '/powerpoint/japan1.pptx'),
('beku mo nai','is a verb form that comes from the verb au', 'Japan','level1', 'https://www.youtube.com/embed/RVphUD-C5jQ', '/powerpoint/japan1.pptx');


INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('bunpou','soumatomebunpou','Japan','level2', 'https://www.youtube.com/embed/jDUsvqMLD-Q', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('sueni','soumatome bunpou','Japan','level2', 'https://www.youtube.com/embed/TNwm6uEsdZM', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('routoshiteiru','shinkensun bunpou','Japan','level2', 'https://www.youtube.com/embed/9yPW-UgfDI', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('nichijyou','soumatome kanji','Japan','level2', 'https://www.youtube.com/embed/dFR6PB2DTt4', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('seigatsu','kangimaster','Japan','level2', 'https://www.youtube.com/embed/W2n3XGIPHtA', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('omoiyari','mimikaraoboeru kotoba','Japan','level2', 'https://www.youtube.com/embed/IkY_bt4E6bE', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('agogareru','speedmaster kotoba','Japan','level2', 'https://www.youtube.com/embed/DcRk3TtaZxg', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('ichinichi doukai','soumatome doukai','Japan','level2', 'https://www.youtube.com/embed/ZJsKtt6LaW4', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('futsuka ','mimikaraoboeru doukai','Japan','level2', 'https://www.youtube.com/embed/tnHSMGHmJ5s', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('mikka ','shinkensan doukai','Japan','level2', 'https://www.youtube.com/embed/WLrO_eXzInw', '/powerpoint/japan1.pptx');

drop table content;
select * from content;



INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('houmon','doriru doukai','Japan','level3', 'https://www.youtube.com/embed/WGhq4HNPjwI', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('temiyage','oboeru doukai','Japan','level3', 'https://www.youtube.com/embed/8ztlZzgdQEQ', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('sakugitsu','hana tango','Japan','level3', 'https://www.youtube.com/embed/jJxa0jv6nnU', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('toshirori','tamago tango','Japan','level3', 'https://www.youtube.com/embed/p1qxiwj4Qs8', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('ryouri','shinnkensan koboba','Japan','level3', 'https://www.youtube.com/embed/mAbGC2PQzIs', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('koboba','speedmaster koboba','Japan','level3', 'https://www.youtube.com/embed/6a1NGsX5hx4', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('taberu','soumatome kanji','Japan','level3', 'https://www.youtube.com/embed/BjQpRsovso', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('yoko','rokogiru kanji','Japan','level3', 'https://www.youtube.com/embed/JRon5-OOTmE', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('ukemike','mimikara bunpou','Japan','level3', 'https://www.youtube.com/embed/rqDHiU-5JNE', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('onakaga','pekopeko bunpou','Japan','level3', 'https://www.youtube.com/embed/Fg9n6S-fbXE', '/powerpoint/japan1.pptx');


select * from content;


INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('ondesuka','futsuu bunpou','Japan','level4', 'https://www.youtube.com/embed/UVp_8xMZNbE', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('ganbare','meeikei bunpou','Japan','level4', 'https://www.youtube.com/embed/Z6zqQH8aPW8', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('shigoto','kyoushitsu doukai','Japan','level4', 'https://www.youtube.com/embed/fnFGhe-rtjQ', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('ashita','supidoo doukai','Japan','level4', 'https://www.youtube.com/embed/9EzkdR2o8Hw', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('michi','getsu kanji','Japan','level4', 'https://www.youtube.com/embed/X3W1K-LIlfo', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('sumu','miyako kanji','Japan','level4', 'https://www.youtube.com/embed/6GhcjBFl2QI', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('mizu','fu kanji','Japan','level4', 'https://www.youtube.com/embed/rg2KJpI4L9k', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('shougakkusei','gakusei tango','Japan','level4', 'https://www.youtube.com/embed/sR20hcLBBk', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('jikan','minnago nihongo kotoba','Japan','level4', 'https://www.youtube.com/embed/OapAO1lPw-8', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('denki','kieru kotoba','Japan','level4', 'https://www.youtube.com/embed/MsB4eA7ppos', '/powerpoint/japan1.pptx');
____________________________________________

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('arimasen','watashi bunpou','Japan','level5', 'https://www.youtube.com/embed/0puwOtHBlGE', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('asoko','soko bunpou','Japan','level5', 'https://www.youtube.com/embed/LZFyDlMcCL0', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('te','mimi kanji','Japan','level5', 'https://www.youtube.com/embed/VzZ9-XFEP14', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('shiroi','iro kanji','Japan','level5', 'https://www.youtube.com/embed/UegZoi2MTrk', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('kawa','nichi kanji','Japan','level5', 'https://www.youtube.com/embed/mgPqeNQU41w', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('watashi','minasan kotoba','Japan','level5', 'https://www.youtube.com/embed/SFOSnn2_tj8', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('arimasu','aozora kotoba','Japan','level5', 'https://www.youtube.com/embed/MsB4eA7ppos', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('nani','ryokou doukai','Japan','level5', 'https://www.youtube.com/embed/TnZoL1taZVU', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('yokatta','daijyoubu doukai','Japan','level5', 'https://www.youtube.com/embed/tSF9XNdku3g', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('genki','ohayo doukai','Japan','level5', 'https://www.youtube.com/embed/a2hYNeafxeM', '/powerpoint/japan1.pptx');


INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('houmon','doriru doukai','Japan','level3', 'https://www.youtube.com/embed/WGhq4HNPjwI', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('temiyage','oboeru doukai','Japan','level3', 'https://www.youtube.com/embed/8ztlZzgdQEQ', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('sakugitsu','hana tango','Japan','level3', 'https://www.youtube.com/embed/jJxa0jv6nnU', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('toshirori','tamago tango','Japan','level3', 'https://www.youtube.com/embed/p1qxiwj4Qs8', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('ryouri','shinnkensan koboba','Japan','level3', 'https://www.youtube.com/embed/mAbGC2PQzIs', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('ryouri','speedmaster koboba','Japan','level3', 'https://www.youtube.com/embed/6a1NGsX5hx4', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('taberu','soumatome kanji','Japan','level3', 'https://www.youtube.com/embed/BjQpRsovso', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('yoko','rokogiru kanji','Japan','level3', 'https://www.youtube.com/embed/JRon5-OOTmE', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('ukemike','mimikara bunpou','Japan','level3', 'https://www.youtube.com/embed/rqDHiU-5JNE', '/powerpoint/japan1.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('onakaga','pekopeko bunpou','Japan','level3', 'https://www.youtube.com/embed/Fg9n6S-fbXE', '/powerpoint/japan1.pptx');


select * from schedule;

select * from content where ctype="Chinese" and level="HSK 6";
select * from content;

select * from register;

__________________________Korea_________________________

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('annyeonghaseyo','Hello','Korea','level1', 'https://www.youtube.com/embed/sBaYQfUSLF0', '/powerpoint/hello.pptx'),
('jal jinaesseoyo','How are you?','Korea','level1', 'https://www.youtube.com/embed/lIPxkuEKsdY', '/powerpoint/hello.pptx'),
('Eereume moehyo','whats your name?','Korea','level1', 'https://www.youtube.com/embed/74Fz-q8Iqv8', '/powerpoint/hello.pptx'),
('Eodi sal-ayo','where do you live?','Korea','level1', 'https://www.youtube.com/embed/nirQKEne1YQ', '/powerpoint/hello.pptx'),
('Annyeonghi gaseyo','good bye','Korea','level1', 'https://www.youtube.com/embed/ibiryyPnOWw', '/powerpoint/hello.pptx'),
('mianhae','Im sorry','Korea','level1', 'https://www.youtube.com/embed/M7WB2Ef_aKA', '/powerpoint/hello.pptx'),
('na-ege juseyo','where do you live?','Korea','level1', 'https://www.youtube.com/embed/nirQKEne1YQ', '/powerpoint/hello.pptx'),
('Saranghaeyo','i love you','Korea','level1', 'https://www.youtube.com/embed/lMFrVYbZ088', '/powerpoint/hello.pptx'),
('Abeoji','father','Korea','level1', 'https://www.youtube.com/embed/XumleyDW8OE', '/powerpoint/hello.pptx'),
('Emoeoni','mother','Korea','level1', 'https://www.youtube.com/embed/IFeXy9rwKNw', '/powerpoint/hello.pptx');

select * from content;

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('Na naeil hanguge gal geoya','I am going to go to Korea tomorrow','Korea','level2', 'https://www.youtube.com/embed/c5VggkqXGXU', '/powerpoint/klevel2goingto.pptx'),
('Cheongbajileul ib-eul geoyeyo','I am going to wear blue jeans','Korea','level2', 'https://www.youtube.com/embed/c5VggkqXGXU', '/powerpoint/klevel2goingto.pptx'),
('Eodiseo mannal geoyeyo','Where are you going to meet','Korea','level2', 'https://www.youtube.com/embed/c5VggkqXGXU', '/powerpoint/klevel2goingto.pptx'),
('tellebijeon bwayo','I watch television','Korea','level2', 'https://www.youtube.com/embed/2bKK5n2VZ4g', '/powerpoint/klevel2watch.pptx'),
('chin-gu-reul mannal-sseo-yo','I met a friend','Korea','level2', 'https://www.youtube.com/embed/IE4WDGZSYLY', '/powerpoint/klevel2met.pptx'),
(' ji-be isseo sseoyo','I am at home','Korea','level2', 'https://www.youtube.com/embed/Jbv1g_mDGhI', '/powerpoint/klevel2lesson3(me&delicious).pptx'),
('gim-chi-neun ma-si-sseo-yo geurigo han-guk eum-si-gi-eyo','Kimchi is delicious. And it is Korean food.','Korea','level2', 'https://www.youtube.com/embed/dEDOhTCwj-0', '/powerpoint/klevel2lesson3(me&delicious).pptx'),
(' jeoneun hak-saeng-ieyo geurigo peu-rang-seu-eo-reul gong-bu-ha yo',' I am a student. And I am studying French','Korea','level2', 'https://www.youtube.com/embed/dEDOhTCwj-0', '/powerpoint/klevel2student.pptx'),
('chin-gu-ha-go yeong-hwa bwa-sseo-yo','I watched a movie with a friend','Korea','level2', 'https://www.youtube.com/embed/LyxC1NnrdaY', '/powerpoint/klevel2withfriend.pptx'),
('nam-ja-chin-gu-ha-go de-i-teu-hal geo-ye-yo','I am going to go on a date with my boyfriend','Korea','level2', 'https://www.youtube.com/embed/c5VggkqXGXU', '/powerpoint/klevel2boyfriend.pptx');

delete from content where level="level3";


INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('jeo sa-ram neo-mu meo-si-sseo-yo','That guy is really cool.','Korea','level3', 'https://www.youtube.com/embed/RlHLTQfg7KM', '/powerpoint/klevel3beer.pptx'),
('neo-mu bo-go si-peo-yo','I miss you so much.','Korea','level3', 'https://www.youtube.com/embed/AWIhCzmN0jM', '/powerpoint/klevel3beer.pptx'),
('maek-ju ma-sil-kka-yo','Shall we drink beer? Or Do you want to drink coffee or beer?','Korea','level3', 'https://www.youtube.com/embed/FNfjjlG8yXw', '/powerpoint/klevel3beer.pptx'),
('do-gi-re-seo i-nyeon-jjeum sa-ra-sseo-yo.','I lived in Germany for about two years.','Korea','level3', 'https://www.youtube.com/embed/BgD0yl97cZE', '/powerpoint/klevel3beer.pptx'),
('man-na-seo ban-ga-wo-yo','I am glad to meet you.','Korea','level3', 'https://www.youtube.com/embed/r-lkWj5oyUo', '/powerpoint/klevel3beer.pptx'),
('ke-i-geul sa-seo chin-gu-han-te jul geo-ye-yo','I am going to buy a cake and give it to a friend.','Korea','level3', 'https://www.youtube.com/embed/Z1VBYWkGxAA', '/powerpoint/klevel3beer.pptx'),
('yeol-sim-hi gong-bu-hae-seo jang-hak-geu-meul ba-deul geo-ye-yo','I am going to study hard so I can get/and I will get a scholarship.','Korea','level3', 'https://www.youtube.com/embed/YYK3bVDHvVE', '/powerpoint/klevel3beer.pptx'),
('i yeong-hwa jae-mi-i-sseul geot ga-ta-yo','I think this movie will be interesting','Korea','level3', 'https://www.youtube.com/embed/jjLCmd06AIo', '/powerpoint/klevel3beer.pptx'),
('sa-gi jeo-ne jal saeng-ga-ka-se-yo',' Think well before you buy it.','Korea','level3', 'https://www.youtube.com/embed/2k3dQEWuIBo', '/powerpoint/klevel3beer.pptx'),
('jeo-do do-ni eop-seo-yo. geu-rae-do geok-jeong-ha-ji ma-se-yo','I do not have money, either. But still, do not worry.','Korea','level3', 'https://www.youtube.com/embed/aQY9AHKzchU', '/powerpoint/klevel3beer.pptx');

INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('chin-gu-neun ma-neul-su-rok jo-a-yo','The more friends you have, the better.','Korea','level4', 'https://www.youtube.com/embed/hL7DuWyCt4M', '/powerpoint/klevel4drink.pptx'),
('keo-pi ma-sil-lae-yo, cha ma-sil-lae-yo',' Do you want to drink coffee or tea?','Korea','level4', 'https://www.youtube.com/embed/CA1ZVYeCP8s', '/powerpoint/klevel4drink.pptx'),
('dang-si-neu nu-neun cham a-reum-da-wo-yo','Your eyes are so beautiful.','Korea','level4', 'https://www.youtube.com/embed/N72X9eOD9lA', '/powerpoint/klevel4drink.pptx'),
('gwaen-cha-na-yo','I am okay.','Korea','level4', 'https://www.youtube.com/embed/uklYQnaiyQk', '/powerpoint/klevel4ok.pptx'),
('keom-pyu-teo sseo-do dwae-yo',' Can I use the computer.','Korea','level4', 'https://www.youtube.com/embed/NUitHW6OEh8', '/powerpoint/klevel4drink.pptx'),
('yak-gu-geun hak-gyo-ha-go gyeong-chal-seo sa-i-e i-sseo-yo','The pharmacy is between the school and the police station.','Korea','level4', 'https://www.youtube.com/embed/5cCwJjzaLHs', '/powerpoint/klevel4any.pptx'),
('a-mu-de-do ga-go sip-ji a-na-yo',' I do not want to go anywhere.','Korea','level4', 'https://www.youtube.com/embed/SOWwP9nPepo', '/powerpoint/klevel4any.pptx'),
('ga-kkeum seo-jeo-me ga-yo','I go to the bookstore sometimes.','Korea','level4', 'https://www.youtube.com/embed/jtLmMIeice4', '/powerpoint/klevel4drink.pptx'),
INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('a-mu-reot-ke-na hae-do dwae-yo','You can do it whatever way you want.','Korea','level4', 'https://www.youtube.com/embed/g_9VK-EWzpc', '/powerpoint/klevel4ok.pptx'),
('na-neun yeo-gi i-sseul-ge','I will stay here.','Korea','level4', 'https://www.youtube.com/embed/4p1lyFvXyEI', '/powerpoint/klevel4any.pptx');


INSERT INTO content (name, about, ctype, level, video, ppt) VALUES
('gal ppeon-haet-neun-de, an ga-sseo-yo','I almost went there, but I did not go.','Korea','level5', 'https://www.youtube.com/emed/ILqndwccElM', '/powerpoint/klevel5.pptx'),
('eo-je jae-mi-i-sseot-na bwa-yo.',' I guess it was fun yesterday.','Korea','level5', 'https://www.youtube.com/embed/tYp1VWg16Jg', '/powerpoint/klevel5.pptx'),
('jo-reop-ha-ja-ma-ja i-reul si-jak-hal geo-ye-yo','I will start working as soon as I graduate.','Korea','level5', 'https://www.youtube.com/embed/ldAW6EusYXU', '/powerpoint/klevel5.pptx'),
('eo-je chin-gu man-na-ryeo-go haet-neun-de, mot man-na-sseo-yo','I wanted to meet a friend yesterday, but I could not meet her','Korea','level5', 'https://www.youtube.com/embed/1elprpc2ttA', '/powerpoint/klevel5.pptx'),
('ji-be-seo gong-bu-ha-da-ga na-wa-sseo-yo',' I was studying at home and came outside.','Korea','level5', 'https://www.youtube.com/embed/IO2Ap5j9pxU', '/powerpoint/klevel5.pptx'),
('je-ga il-deung-i-ra-go deu-reo-sseo-yo','I heard that I was the first place winner.','Korea','level5', 'https://www.youtube.com/embed/pKvhEZIWttU', '/powerpoint/klevel5.pptx'),
('nae-il, al-lek-seu-ra-neun chin-gu-ga ol geo-ye-yo','Tommorow, a friend called Alex will come here.','Korea','level5', 'https://www.youtube.com/embed/vfOPCphLrWM', '/powerpoint/klevel5.pptx'),
('ha-ru-ra-do ppal-li kkeut-nae-ya dwae-yo','I need to finish it quickly. Even one day sooner would make a lot of difference.','Korea','level5', 'https://www.youtube.com/emved/z7bpX6LtaUc', '/powerpoint/klevel5.pptx'),
('han-gu-geo-reul jal ha-go si-peu-myeon mae-il gong-bu-hae-ya han-da','If you want to speak good Korean, you need to study everyday.','Korea','level5', 'https://www.youtube.com/embed/WiQ99qvLTvY', '/powerpoint/klevel5.pptx'),
('han-gu-geun gyeo-u-re jeong-mal chup-da-go deu-reo-sseo-yo','I heard that it is very cold in winter in Korea','Korea','level5', 'https://www.youtube.com/embed/z11MYdvgJdY', '/powerpoint/klevel5.pptx');

create table progress(
name VARCHAR(255),
level VARCHAR(255),
ctype VARCHAR(255),
precent VARCHAR(255)
);

ALTER TABLE progress MODIFY COLUMN precent VARCHAR(255);

select * from register;
select * from progress;

update register set password="123456" where username="Ella";

delete from progress where name="Grace";

UPDATE progress SET precent="100.0" WHERE name="Sofia" AND level="level1" AND ctype="Korea";

drop table UserCertificates;

select * from content;

CREATE TABLE UserCertificates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    ctype VARCHAR(100),
    level VARCHAR(100),
    pdf_content LONGBLOB 
);

select * from UserCertificates;

delete from UserCertificates where name="Grace";


//database for feedback//
insert into feedback2 (username,email,course,feedback) values ("Juliet","Juliet@gmail.com","Cpp","I must say it exceeded all my expectations. As someone relatively new to programming, I found this course to be exceptionally well-designed.");
insert into feedback2 (username,email,course,feedback) values ("Sofia","Sofia@gmail.com","Cpp","The course is impeccably organized, starting from the basics and gradually progressing to more advanced topics.");
insert into feedback2 (username,email,course,feedback) values ("Thomas","Thomas@gmail.com","Cpp","The instructor and her team are incredibly responsive to questions posted in the Q&A section.");


insert into feedback2 (username,email,course,feedback) values ("AmySan","Amysan@gmail.com","FWT","The instructor's clear explanations and insightful examples made even the most complex topics easy to understand.");
insert into feedback2 (username,email,course,feedback) values ("JulyMoe","july123@gmail.com","FWT","The hands-on exercises provided ample opportunity to apply theoretical knowledge and strengthen practical skills.");
insert into feedback2 (username,email,course,feedback) values ("SoePyaw","SoePyae@gmail.com","FWT","The course's emphasis on real-world applications gave me confidence in tackling programming challenges outside the classroom.");

select * from register;

insert into feedback2 (username,email,course,feedback) values ("Amelia","Amelia@gmail.com","Database","The practical exercises and real-world examples offered invaluable hands-on experience, enabling me to apply database concepts in various scenarios.");
insert into feedback2 (username,email,course,feedback) values ("Charlotte","charlotte123@gmail.com","Database","The hands-on exercises provided ample opportunity to apply theoretical knowledge and strengthen practical skills.");
insert into feedback2 (username,email,course,feedback) values ("Eloise","Eloise234@gmail.com","Database","The knowledge gained from this course, I feel equipped to design and manage databases effectively, and I am excited to apply these skills in my future projects.");

---------
----------------------------------------------------------------------------------------------------------------------------------------------------

insert into feedback2 (username,email,course,feedback) values ("Gregory","greg_123@gmail.com","Korean","The course content is diverse and engaging, covering various aspects of Korean language and culture.");
insert into feedback2 (username,email,course,feedback) values ("Giselle","gigi@email.com","Korean","I appreciated the interactive quizzes and exercises, which helped reinforce my understanding of the material.");
insert into feedback2 (username,email,course,feedback) values ("Gavin","gavin321@hotmail.com","Korean","The instructor's passion for teaching Korean language shines through in every lesson, making learning enjoyable.");

insert into feedback2 (username,email,course,feedback) values ("Daisy","Daisyflower@gmail.com","Japanese","I was pleasantly surprised by the depth and breadth of the course material, which covered a wide range of topics.");
insert into feedback2 (username,email,course,feedback) values ("Isabella","Isa3421@gmail.com","Japanese","The instructors' expertise and passion for teaching Korean were evident in every aspect of the course.");
insert into feedback2 (username,email,course,feedback) values ("Harper","Harper432s@gmail.com","Japanese","The course's emphasis on real-world applications gave me confidence in tackling programming challenges outside the classroom.");
insert into feedback2 (username,email,course,feedback) values ("Gabriella","gabs90@gmail.com","Japanese","The course community forum provided a supportive environment for sharing learning experiences and tips.");
insert into feedback2 (username,email,course,feedback) values ("Gideon","gideon_korean@gmail.com","Japanese","The course materials are well-structured, with clear explanations and practical examples.");

insert into feedback2 (username,email,course,feedback) values ("Abigail","Abigail@gmail.com","Chinese","From grammar explanations to vocabulary drills, each lesson was meticulously crafted to facilitate effective learning.");
insert into feedback2 (username,email,course,feedback) values ("Alexa","alesofia123@gmail.com","Chinese","I particularly appreciated the cultural insights woven seamlessly into the curriculum, providing a holistic understanding of the Korean language and its context.");
insert into feedback2 (username,email,course,feedback) values ("Allegra","office122@gmail.com","Chinese","The course structure allowed for a gradual progression, ensuring a solid foundation before delving into more advanced concepts.");

select * from feedback2;

delete from progress where name="Juliet";

select * from register;

