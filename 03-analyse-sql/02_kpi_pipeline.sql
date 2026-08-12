-- KPI de pilotage du pipeline JobTracker
-- Dialecte cible : SQLite

WITH base AS (
    SELECT *
    FROM candidatures
), agr AS (
    SELECT
        COUNT(*) AS total_candidatures,
        SUM(CASE WHEN statut = 'Candidature envoyee' THEN 1 ELSE 0 END) AS candidatures_envoyees,
        SUM(CASE WHEN statut = 'Backlog' THEN 1 ELSE 0 END) AS candidatures_backlog,
        SUM(CASE WHEN statut = 'Refus' THEN 1 ELSE 0 END) AS refus,
        SUM(CASE WHEN favori = 1 THEN 1 ELSE 0 END) AS favoris,
        AVG(CASE WHEN score_adequation IS NOT NULL AND score_adequation != '' THEN CAST(score_adequation AS INTEGER) END) AS score_moyen
    FROM base
)
SELECT
    total_candidatures,
    candidatures_envoyees,
    candidatures_backlog,
    refus,
    favoris,
    ROUND(score_moyen, 1) AS score_moyen,
    ROUND(100.0 * candidatures_envoyees / NULLIF(total_candidatures, 0), 1) AS taux_envoyees_pct,
    ROUND(100.0 * refus / NULLIF(total_candidatures, 0), 1) AS taux_refus_pct
FROM agr;

SELECT
    echeance_action,
    COUNT(*) AS nb_actions
FROM candidatures
WHERE echeance_action IS NOT NULL
  AND echeance_action != ''
  AND statut != 'Refus'
GROUP BY echeance_action
ORDER BY echeance_action;

SELECT id_candidature, poste, secteur, statut, canal_principal, score_adequation, echeance_action
FROM candidatures
WHERE favori = 1
   OR (score_adequation IS NOT NULL AND score_adequation != '' AND CAST(score_adequation AS INTEGER) >= 80)
ORDER BY favori DESC, score_adequation DESC, echeance_action;
