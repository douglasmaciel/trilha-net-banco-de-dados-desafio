USE [Filmes]
GO

SELECT [f].[Nome], [g].[Genero] FROM [Filmes] as f
	INNER JOIN [FilmesGenero] as fg ON [f].[Id] = [fg].[IdFilme]
	INNER JOIN [Generos] as g ON [fg].[IdGenero] = [g].[Id]
	WHERE [g].[Genero] = 'Mistério'
GO