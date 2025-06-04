USE [Filmes]
GO

SELECT [Ano], COUNT(*) as Quantidade FROM [Filmes]
	GROUP BY [Ano]
	ORDER BY SUM([Duracao]) DESC
GO