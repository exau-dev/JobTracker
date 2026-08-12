-- Schema SQLite conseille pour importer 02-donnees/candidatures_anonymisees.csv
-- Le depot ne versionne pas de fichier .db binaire : la base peut etre reconstruite a partir du CSV.

DROP TABLE IF EXISTS candidatures;

CREATE TABLE candidatures (
    id_candidature TEXT PRIMARY KEY,
    poste TEXT NOT NULL,
    secteur TEXT NOT NULL,
    statut TEXT NOT NULL,
    type_contrat TEXT,
    canal_principal TEXT,
    canaux_secondaires TEXT,
    score_adequation INTEGER,
    priorite TEXT,
    favori INTEGER NOT NULL DEFAULT 0,
    echeance_action TEXT,
    tags_metier TEXT
);

-- Exemple d'import avec sqlite3 en ligne de commande :
-- .mode csv
-- .separator ,
-- .import --skip 1 02-donnees/candidatures_anonymisees.csv candidatures
