
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'GifsDb')
CREATE DATABASE GifsDb;
GO

use GifsDb;
GO

DROP TABLE IF EXISTS GifTag;
DROP TABLE IF EXISTS Tag;
DROP TABLE IF EXISTS Gif;
DROP TABLE IF EXISTS [User];


CREATE TABLE [Tag] (
	[Id] INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(30) NOT NULL,
);

CREATE TABLE [dbo].[User] (
	[Id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Name] VARCHAR(30) NOT NULL,
);

CREATE TABLE [dbo].[Gif] (
	[Id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[AuthorId] INT NOT NULL,
	[Title] VARCHAR(30) NOT NULL,
	[Url] VARCHAR(50) NOT NULL, 
    FOREIGN KEY (AuthorId) REFERENCES [User](Id)
);

CREATE TABLE [GifTag] (
	[GifId] INT NOT NULL,
	[TagId] INT NOT NULL,
	CONSTRAINT [GifTags] PRIMARY KEY
	(
		GifId,
		TagId
	),
	FOREIGN KEY (GifId) REFERENCES Gif(Id),
	FOREIGN KEY (TagId) REFERENCES [Tag](Id)
);

INSERT INTO [User] (Name)  VALUES
('User1'),
('User2');
GO

INSERT INTO [Gif] (AuthorId, Title, [Url]) VALUES
(1, 'gif1', '#'),
(1, 'gif2', '#'),
(2, 'gif3', '#');
GO

INSERT INTO [Tag] ([Name]) VALUES
('smile'),
('love'),
('fun');
GO


INSERT INTO [GifTag] VALUES
(1, 1),
(1, 2),
(2, 3);
GO