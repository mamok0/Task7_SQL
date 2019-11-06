CREATE DATABASE GifsDb;
GO

use GifsDb;
GO

INSERT INTO [User] (Name)  VALUES
('User1'),
('User2');
GO

INSERT INTO [Gif] (AuthorId, Title) VALUES
(1, 'gif1'),
(1, 'gif2'),
(2, 'gif3');
GO

INSERT INTO [Tag] ([Name], Rating) VALUES
('smile', 'g'),
('love', 'c'),
('fun', 'b');
GO


INSERT INTO [GifTag] VALUES
(1, 1),
(1, 2),
(2, 3);
GO
