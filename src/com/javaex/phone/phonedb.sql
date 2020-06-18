--테이블 삭제
drop table person;

--시퀀스 삭제
drop sequence seq_person_id;

--테이블 생성
create table person (
  person_id	number(5),
  name	VARCHAR2(30) 	NOT NULL,
  hp	VARCHAR2(20),
  company VARCHAR2(20),
  primary 	key(person_id)	
);
--시퀀스 생성
create sequence seq_person_id increment by 1 start with 1;

--person Insert
insert into person values(seq_person_id.nextVal,'이효리','010-1111-1111','02-1111-1111');
insert into person values(seq_person_id.nextVal,'정우성','010-2222-2222','02-2222-2222');
insert into person values(seq_person_id.nextVal,'유재석','010-3333-3333','02-3333-3333');
insert into person values(seq_person_id.nextVal,'이정재','010-4444-4444','02-4444-4444');
insert into person values(seq_person_id.nextVal,'서장훈','010-5555-5555','02-5555-5555');

--사람 업데이트
Update person
set hp = '010-9999-9999', --전화번호를 010-9999-9999으로 변경
    company = '02-9999-9999' --회사번호를 02-9999-9999으로 변경
where person_id=4; 

--사람 삭제
delete person
where person_id=5; 

select * from person;

