INSERT INTO autori (nome, cognome, data_nascita, nazionalita)
VALUES 
('Umberto', 'Eco', '1932-01-05', 'Italiana'),
('Italo', 'Calvino', '1923-10-15', 'Italiana');

INSERT INTO editori (nome, citta, paese)
VALUES
('Bompiani', 'Milano', 'Italia'),
('Mondadori', 'Milano', 'Italia');

INSERT INTO libri (titolo, isbn, anno_pubblicazione, genere, copie_disponibili, autore_id, editore_id)
VALUES
('Il nome della rosa', '9788845292613', 1980, 'Romanzo storico', 3, 1, 1),
('Le città invisibili', '9788804668237', 1972, 'Narrativa', 2, 2, 2);

INSERT INTO utenti (nome, cognome, email, telefono)
VALUES
('Mario', 'Rossi', 'mario.rossi@example.com', '3331234567'),
('Luca', 'Bianchi', 'luca.bianchi@example.com', '3337654321');
