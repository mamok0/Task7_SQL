SELECT TOP 1 [User].[Name], COUNT(Gif.id) AS GifsCount FROM [User]
LEFT JOIN [Gif] ON [User].Id = Gif.AuthorId
GROUP BY [User].[Name]
ORDER BY (COUNT(Gif.Id)) DESC;
