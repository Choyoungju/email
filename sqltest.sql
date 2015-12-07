--select
select no,first_name,last_name,email from email_list;

--sequence
select email_list_no_seq.nextval from dual; --듀얼은 가상 테이블 번호 1씩 증가 
select email_list_no_seq.currval from dual; -- 현재 번호

--insert
insert into email_list values(1,'영주','조','ChoYoungju');
insert into email_list values(2,'대혁','안','kickscar');

insert into email_list values(email_list_no_seq.nextval,'대혁','안','kickscar');

commit; --커밋을 날려야 반영

--delete
delete from email_list where last_name='안';

--update
update EMAIL_LIST set last_name = '김', first_name = '둘리';