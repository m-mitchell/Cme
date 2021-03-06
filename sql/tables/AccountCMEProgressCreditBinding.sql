create table AccountCMEProgressCreditBinding (
	progress integer not null references AccountCMEProgress(id) on delete cascade,
	credit integer not null references CMECredit(id) on delete cascade,

	primary key (progress, credit)
);

create index AccountCMEProgressCreditBinding_credit_index
	on AccountCMEProgressCreditBinding(credit);
