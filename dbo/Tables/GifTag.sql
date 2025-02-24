﻿CREATE TABLE [GifTag] (
	[GifId] INT NOT NULL,
	[TagId] INT NOT NULL,
	CONSTRAINT [GifTags] PRIMARY KEY
	(
		GifId,
		TagId
	),
	FOREIGN KEY (GifId) REFERENCES Gif(Id),
	FOREIGN KEY (TagId) REFERENCES [User](Id)
);