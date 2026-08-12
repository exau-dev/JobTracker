-- Analyse par secteur, canal et type de contrat
-- Dialecte cible : SQLite

SELECT
    secteur,
    statut,
    COUNT(*) AS nb_candidatures
FROM candidatures
GROUP BY secteur, statut
ORDER BY secteur, nb_candidatures DESC;

SELECT
    canal_principal,
    COUNT(*) AS nb_candidatures,
    SUM(CASE WHEN statut = 'Candidature envoyee' THEN 1 ELSE 0 END) AS nb_envoyees,
    SUM(CASE WHEN statut = 'Refus' THEN 1 ELSE 0 END) AS nb_refus,
    ROUND(AVG(CASE WHEN score_adequation IS NOT NULL AND score_adequation != '' THEN CAST(score_adequation AS INTEGER) END), 1) AS score_moyen
FROM candidatures
GROUP BY canal_principal
ORDER BY nb_candidatures DESC, score_moyen DESC;

SELECT
    secteur,
    COUNT(*) AS nb_candidatures,
    MIN(CAST(score_adequation AS INTEGER)) AS score_min,
    ROUND(AVG(CAST(score_adequation AS INTEGER)), 1) AS score_moyen,
    MAX(CAST(score_adequation AS INTEGER)) AS score_max
FROM candidatures
WHERE score_adequation IS NOT NULL
  AND score_adequation != ''
GROUP BY secteur
ORDER BY score_moyen DESC;

SELECT
    type_contrat,
    statut,
    COUNT(*) AS nb_candidatures
FROM candidatures
GROUP BY type_contrat, statut
ORDER BY type_contrat, nb_candidatures DESC;
