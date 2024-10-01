    -- 1
    SELECT Opere.Codice, Opere.Titolo FROM Opere, Artisti, Musei
    WHERE Artisti.id = Opere.Artista 
    AND Opere.Museo = Musei.Codice
	AND Nome_Darte = 'Tiziano'
    AND Musei.Nome = 'National Gallery'
    ;
    -- 2
    SELECT Artisti.Nome ,Artisti.Cognome, Opere.Titolo FROM Opere, Artisti ,Musei, Citta
    WHERE Artisti.id = Opere.Artista 
    AND Opere.Museo = Musei.Codice
    AND Citta.id = Musei.Città
    AND Citta.nome = 'Firenze'
    ;
    -- 3
    SELECT Citta.Nome FROM Opere, Artisti ,Musei, Citta
    WHERE Artisti.id = Opere.Artista 
    AND Opere.Museo = Musei.Codice
    AND Citta.id = Musei.Città
    AND Artisti.Nome ='Caravaggio'
    ;
    -- 4
    SELECT Artisti.Nome, Artisti.Cognome, Opere.Titolo FROM Opere, Artisti, Musei, Citta, Personaggi
    WHERE Artisti.id = Opere.Artista 
    AND Opere.Museo = Musei.Codice
	AND Citta.id = Musei.Città
    AND Personaggi.Opera = Opere.Codice
	AND Artisti.Nazione = 'Spagna'
    AND Musei.Città = 'Firenze'
    AND Personaggi.Descrizione LIKE '%Napoleone%'
    ;    
    -- 5
    SELECT Opere.Titolo FROM Opere, Artisti, Musei, Citta, Personaggi
    WHERE Artisti.id = Opere.Artista 
    AND Opere.Museo = Musei.Codice
	AND Citta.id = Musei.Città
    AND Personaggi.Opera = Opere.Codice
	AND Artisti.Nazione = 'Italia'
    AND Musei.Città = 'Londra'
    AND Personaggi.Descrizione LIKE '%Madonna%'
    ;
    -- 6
	SELECT * FROM Opere
    WHERE Opere.Titolo LIKE 'A%' 
    ;    
    -- 7
    SELECT Citta.Nome FROM Opere, Artisti, Musei, Citta
    WHERE Artisti.id = Opere.Artista 
    AND Opere.Museo = Musei.Codice
	AND Citta.id = Musei.Città
	AND Nome_Darte = 'Michelangelo'
    ;