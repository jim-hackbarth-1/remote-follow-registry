create table [Authentication].[Account]
(
	[Id] int identity(1, 1) not null,
	AccountName nvarchar(256) not null,
	PasswordHash nvarchar(50) not null,
	PasswordSalt nvarchar(50) not null,
	constraint [Authentication_Account_PK] primary key clustered ([Id] asc)
)

go
create unique nonclustered index [Authentication_Account_AccountName_IX]
	on [Authentication].[Account]([AccountName] asc) with (fillfactor = 90);
