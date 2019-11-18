SELECT Tag.[Name], COUNT(GifTag.TagId) AS UseCount FROM Tag
JOIN GifTag on Tag.Id = GifTag.TagId 
GROUP BY Tag.[Name]
ORDER BY UseCount DESC;