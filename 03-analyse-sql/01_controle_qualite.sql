-- Controle qualite du dataset JobTracker
-- Dialecte cible : SQLite

SELECT COUNT(*) AS nb_candidatures
FROM candidatures;

SELECT statut, COUNT(*) AS nb_candidatures
FROM candidatures
GROUP BY statut
ORDER BY nb_candidatures DESC;

SELECT
    SUM(CASE WHEN type_contrat IS NULL OR type_contrat = '' OR type_contrat = 'Non renseigne' THEN 1 ELSE 0 END) AS contrats_non_renseignes,
    SUM(CASE WHEN canal_principal IS NULL OR canal_principal = '' OR canal_principal = 'Non renseigne' THEN 1 ELSE 0 END) AS canaux_non_renseignes,
    SUM(CASE WHEN score_adequation IS NULL OR score_adequation = '' THEN 1 ELSE 0 END) AS scores_non_renseignes,
    SUM(CASE WHEN echeance_action IS NULL OR echeance_action = '' THEN 1 ELSE 0 END) AS echeances_non_renseignees
FROM candidatures;

SELECT id_candidature, poste, secteur, statut, type_contrat, canal_principal, score_adequation, echeance_action
FROM candidatures
WHERE type_contrat = 'Non renseigne'
   OR canal_principal = 'Non renseigne'
   OR score_adequation IS NULL
   OR score_adequation = ''
   OR echeance_action IS NULL
   OR echeance_action = ''
ORDER BY statut, secteur, id_candidature;

SELECT poste, secteur, COUNT(*) AS nb_occurrences
FROM candidatures
GROUP BY poste, secteur
HAVING COUNT(*) > 1
ORDER BY nb_occurrences DESC;
