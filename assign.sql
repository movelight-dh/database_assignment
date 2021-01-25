/*순서대로 테이블 생성*/
drop table deposit
/
drop table branch
/
drop table client
/


create table client
(
	ssn		varchar2(14)	not null,
	name		varchar2(10)	not null,
	address		varchar2(10),
	phone		varchar2(14),
	constraint	pk_client		primary key(ssn)
)
/
create table branch
(
	branch_name	varchar2(14),
	branch_head	varchar2(14),
	address		varchar2(14),
	constraint	pk_branch	primary key(branch_name)
)
/
create table deposit
(
	deposit_num	int,
	ssn		varchar2(14)	not null,
	balance		int,
	branch_name	varchar2(14),
	constraint	pk_deposit	primary key(deposit_num),
	constraint	fk_deposit1	foreign key(ssn)	references
			client(ssn),
	constraint	fk_deposit2	foreign key(branch_name)	references
			branch(branch_name)
)
/
/* 순서대로 레코드 생성 */
insert into client
values('970102-1234123', '김기식', '서울',  '010-2121-1231')
/
insert into client
values('890302-1273121', '홍순태', '서울',  '010-3242-2352')
/
insert into client
values('870423-2312593', '강지선', '부산',  '010-5223-3214')
/
insert into client
values('910502-2123121', '황현희', '부산',  '010-5394-0909')
/
insert into client
values('970306-1298101', '정성태', '대구',  '010-4392-3241')
/
insert into client
values('910931-2109211', '박선희', '서울',  '010-7984-1383')
/
insert into client
values('890902-1248311', '이기상', '대전',  '010-5335-9786')
/
insert into client
values('900402-123571', '박지성', '서울', '010-5910-2312')
/
insert into client
values('910328-2212123', '이영순', '부산', '010-9876-2323')
/
insert into client
values('951012-1234123', '차두리', '제주', '010-5920-2312')
/
insert into branch
values('서울지점', '강동희', '서울')
/
insert into branch
values('성남지점', '박찬주', '성남')
/
insert into branch
values('광주지점', '김기백', '광주')
/
insert into branch
values('대구지점', '김기식', '대구')
/
insert into branch
values('부산지점', '홍상순', '부산')
/
insert into branch
values('대전지점', '이연희', '대전')
/
insert into branch
values('제주지점', '고희경', '제주')
/
insert into deposit
values(100, '970102-1234123', 330000, '서울지점')
/
insert into deposit
values(101, '870423-2312593', 120000, '대전지점')
/
insert into deposit
values(102, '890902-1248311', 2300000, '성남지점')
/
insert into deposit
values(103, '890302-1273121', 560000, '광주지점')
/
insert into deposit
values(104, '900402-123571', 870000, '성남지점')
/
insert into deposit
values(105, '951012-1234123', 9000, '대구지점')
/
insert into deposit
values(106, '970102-1234123', 110000, '대구지점')
/
insert into deposit
values(107, '910502-2123121', 1900000, '서울지점')
/
insert into deposit
values(108, '890302-1273121', 320000, '광주지점')
/
insert into deposit
values(109, '910931-2109211', 560000, '성남지점')
/
insert into deposit
values(110, '890302-1273121', 1200000, '서울지점')
/
insert into deposit
values(111, '970306-1298101', 900000, '제주지점')
/