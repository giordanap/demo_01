CREATE TABLE [dbo].[Sums] (
    [Id]        UNIQUEIDENTIFIER CONSTRAINT [DF_Sums_Id] DEFAULT (newsequentialid()) NOT NULL,
    [numeroA]   INT              NOT NULL,
    [numeroB]   INT              NOT NULL,
    [Result]    INT              NOT NULL,
    [CreatedAt] DATETIME2 (7)    CONSTRAINT [DF_Sums_CreatedAt] DEFAULT (sysutcdatetime()) NOT NULL,
    CONSTRAINT [PK_Sums] PRIMARY KEY CLUSTERED ([Id] ASC)
);

