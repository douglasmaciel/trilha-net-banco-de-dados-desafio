USE [Filmes]
GO

SELECT [f].[Nome], [a].[PrimeiroNome], [a].[UltimoNome], [ef].[Papel] FROM [Filmes] as f
	INNER JOIN [FilmesGenero] as fg ON [f].[Id] = [fg].[IdFilme]
	INNER JOIN [Generos] as g ON [fg].[IdGenero] = [g].[Id]
	INNER JOIN [ElencoFilme] as ef ON [ef].[IdFilme] = [f].[Id]
	INNER JOIN [Atores] as a ON [a].[Id] = [ef].[IdAtor]
GO