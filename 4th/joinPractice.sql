show databases;
desc efub.member;
insert into member (member_id, name, position, email, birth_date)
			value(2, '박현아', 'back', 'park@ewha', '1999-09-09');
insert into member (member_id, name, position, email, birth_date)
			value(3, '김정은', 'back', 'kimjung@ewha', '1999-09-09');
insert into member (member_id, name, position, email, birth_date)
			value(4, '정아연', 'front', 'jung@ewha', '1999-10-10');
insert into member (member_id, name, position, email, birth_date)
			value(5, '김혜린', 'front', 'kinhye@ewha', '1999-01-09');

select * from efub.member;

delete from member where member_id=1;
insert into member (member_id, name, position, email, birth_date)
			value(1, '김민주', 'back', 'kim@ewha', '2000-01-01');

use efub;

insert into team(team_id, team_name, project_title, project_description)
			value(1, '코딩하는 칠공주', '코딕', '코딩하는 벗들을 위한');
insert into team(team_id, team_name, project_title, project_description)
			value(2, '시계는영어로와치', 'studing', '번개형식의');
insert into team(team_id, team_name, project_title, project_description)
			value(3, '돼지감자', '맛집전공', '대학가맛집');
insert into team(team_id, team_name, project_title, project_description)
			value(4, '웨더레인저', 'Seeme', '날씨통합');
            
desc efub.team;
select * from team;
alter table member add team int null;
update member set team=1 where member_id=1;
update member set team=2 where member_id=2;
update member set team=3 where member_id=3;
update member set team=4 where member_id=4;
update member set team=1 where member_id=5;

select * from member;
select team_name, project_title, name, member_id from efub.team join efub.member on team=team_id;

desc efub.score;
insert into score(member_id, name, position, score)
			value(1, '김민주', 'back', 10);
insert into score(member_id, name, position, score)
			value(2, '박현아', 'back', 20);
insert into score(member_id, name, position, score)
			value(3, '김정은', 'back', 30);
insert into score(member_id, name, position, score)
			value(4, '정아연', 'front', 40);
insert into score(member_id, name, position, score)
			value(5, '김혜린', 'front', 50);
            
select * from score;

select team_name, project_title, member.name, member.member_id, score from efub.team join efub.member on team=team_id join efub.score on member.member_id=score.member_id;