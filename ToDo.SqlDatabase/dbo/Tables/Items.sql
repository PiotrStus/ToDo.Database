CREATE TABLE [dbo].[Items]
(
	[Id]				INT				IDENTITY (1, 1) NOT NULL,
	[Title]				NVARCHAR (100)					NOT NULL,
	[Description]		NVARCHAR (300)					NULL,
	[DueDate]			DATETIMEOFFSET					NOT NULL,
	[IsCompleted]		BIT								NOT NULL DEFAULT 0,
	[CreatedAt]			DATETIMEOFFSET					NOT NULL DEFAULT GETDATE(),
	UpdatedAt			DATETIME						NULL
	CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED ([Id] ASC)
);



GO
CREATE INDEX [IQ_Items_DueDate] ON [dbo].[Items] ([DueDate]);

GO
CREATE INDEX [IQ_Items_IsCompleted] ON [dbo].[Items] ([IsCompleted]);