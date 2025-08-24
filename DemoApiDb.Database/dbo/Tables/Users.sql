CREATE TABLE [dbo].[Users] (
    [Id]           UNIQUEIDENTIFIER CONSTRAINT [DF_Users_Id] DEFAULT (newsequentialid()) NOT NULL,
    [Username]     NVARCHAR (100)   NOT NULL,
    [PasswordHash] NVARCHAR (500)   NOT NULL,
    [IsActive]     BIT              CONSTRAINT [DF_Users_IsActive] DEFAULT ((1)) NOT NULL,
    [CreatedAt]    DATETIME2 (7)    CONSTRAINT [DF_Users_CreatedAt] DEFAULT (sysutcdatetime()) NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Username] ASC)
);

