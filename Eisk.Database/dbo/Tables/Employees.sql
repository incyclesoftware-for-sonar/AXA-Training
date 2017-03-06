CREATE TABLE [dbo].[Employees] (
    [EmployeeId]      INT           IDENTITY (1, 1) NOT NULL,
    [LastName]        NVARCHAR (20) NOT NULL,
    [FirstName]       NVARCHAR (10) NOT NULL,
    [Title]           NVARCHAR (30) NULL,
    [TitleOfCourtesy] NVARCHAR (25) NULL,
    [BirthDate]       DATETIME      NULL,
    [HireDate]        DATETIME      NOT NULL,
    [Address]         NVARCHAR (60) NOT NULL,
    [City]            NVARCHAR (15) NULL,
    [Region]          NVARCHAR (15) NULL,
    [PostalCode]      NVARCHAR (10) NULL,
    [Country]         NVARCHAR (15) NOT NULL,
    [HomePhone]       NVARCHAR (24) NOT NULL,
    [Extension]       NVARCHAR (4)  NULL,
    [Photo]           IMAGE         NULL,
    [Notes]           NTEXT         NULL,
    [ReportsTo]       INT           NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeId] ASC),
    CONSTRAINT [FK_Employees_Employees] FOREIGN KEY ([ReportsTo]) REFERENCES [dbo].[Employees] ([EmployeeId])
);

