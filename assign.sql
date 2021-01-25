/*������� ���̺� ����*/
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
/* ������� ���ڵ� ���� */
insert into client
values('970102-1234123', '����', '����',  '010-2121-1231')
/
insert into client
values('890302-1273121', 'ȫ����', '����',  '010-3242-2352')
/
insert into client
values('870423-2312593', '������', '�λ�',  '010-5223-3214')
/
insert into client
values('910502-2123121', 'Ȳ����', '�λ�',  '010-5394-0909')
/
insert into client
values('970306-1298101', '������', '�뱸',  '010-4392-3241')
/
insert into client
values('910931-2109211', '�ڼ���', '����',  '010-7984-1383')
/
insert into client
values('890902-1248311', '�̱��', '����',  '010-5335-9786')
/
insert into client
values('900402-123571', '������', '����', '010-5910-2312')
/
insert into client
values('910328-2212123', '�̿���', '�λ�', '010-9876-2323')
/
insert into client
values('951012-1234123', '���θ�', '����', '010-5920-2312')
/
insert into branch
values('��������', '������', '����')
/
insert into branch
values('��������', '������', '����')
/
insert into branch
values('��������', '����', '����')
/
insert into branch
values('�뱸����', '����', '�뱸')
/
insert into branch
values('�λ�����', 'ȫ���', '�λ�')
/
insert into branch
values('��������', '�̿���', '����')
/
insert into branch
values('��������', '�����', '����')
/
insert into deposit
values(100, '970102-1234123', 330000, '��������')
/
insert into deposit
values(101, '870423-2312593', 120000, '��������')
/
insert into deposit
values(102, '890902-1248311', 2300000, '��������')
/
insert into deposit
values(103, '890302-1273121', 560000, '��������')
/
insert into deposit
values(104, '900402-123571', 870000, '��������')
/
insert into deposit
values(105, '951012-1234123', 9000, '�뱸����')
/
insert into deposit
values(106, '970102-1234123', 110000, '�뱸����')
/
insert into deposit
values(107, '910502-2123121', 1900000, '��������')
/
insert into deposit
values(108, '890302-1273121', 320000, '��������')
/
insert into deposit
values(109, '910931-2109211', 560000, '��������')
/
insert into deposit
values(110, '890302-1273121', 1200000, '��������')
/
insert into deposit
values(111, '970306-1298101', 900000, '��������')
/