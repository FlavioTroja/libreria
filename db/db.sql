CREATE TABLE autori (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cognome VARCHAR(100) NOT NULL,
    data_nascita DATE,
    nazionalita VARCHAR(100)
);

CREATE TABLE editori (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL UNIQUE,
    citta VARCHAR(100),
    paese VARCHAR(100)
);

CREATE TABLE libri (
    id SERIAL PRIMARY KEY,
    titolo VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    anno_pubblicazione INT,
    genere VARCHAR(100),
    copie_disponibili INT NOT NULL DEFAULT 1,
    autore_id INT NOT NULL,
    editore_id INT,
    CONSTRAINT fk_libri_autore FOREIGN KEY (autore_id) REFERENCES autori(id),
    CONSTRAINT fk_libri_editore FOREIGN KEY (editore_id) REFERENCES editori(id)
);

CREATE TABLE utenti (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cognome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    telefono VARCHAR(30),
    data_iscrizione DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE prestiti (
    id SERIAL PRIMARY KEY,
    libro_id INT NOT NULL,
    utente_id INT NOT NULL,
    data_prestito DATE NOT NULL DEFAULT CURRENT_DATE,
    data_scadenza DATE NOT NULL,
    data_restituzione DATE,
    CONSTRAINT fk_prestiti_libro FOREIGN KEY (libro_id) REFERENCES libri(id),
    CONSTRAINT fk_prestiti_utente FOREIGN KEY (utente_id) REFERENCES utenti(id)
);
