Create view ??????????_?????????? 
as
SELECT  dbo.????????.?????_????????, dbo.????????.???, ??????????_?????????? = COUNT([dbo].[?????????].[?????_?????????])
FROM dbo.???????? INNER JOIN dbo.???????? ON dbo.????????.?????_???????? = dbo.????????.?????_???????? INNER JOIN
                         dbo.????????? ON dbo.????????.???_???????? = dbo.?????????.???_????????
						