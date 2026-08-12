# Synthese Jira Kanban

Date de l'export de travail : 2026-08-12

## Role de Jira dans le projet

Jira sert de source operationnelle pour piloter le suivi : secteurs en epics, candidatures en taches, labels pour les canaux/types/scores, echeances pour les prochaines actions, et jalons pour suivre la construction du portfolio JobTracker.

GitHub sert de support portfolio public. Les donnees publiees ici sont donc un extrait anonymise et simplifie, pas l'export Jira brut.

## Etat du board au moment de l'audit

| Indicateur | Valeur |
| --- | ---: |
| Tickets Jira exportes | 66 |
| Epics | 18 |
| Taches hors epics | 48 |
| Candidatures retenues dans le dataset public | 33 |
| Taches projet JobTracker | 15 |

## Repartition des candidatures anonymisees par statut

- Candidature envoyee : 13
- Backlog : 10
- Refus : 10

## Repartition par secteur

- Assurance : 9
- Banque : 7
- Distribution : 4
- Immobilier : 3
- Transport : 2
- Finance : 2
- Industrie / BTP : 2
- Defense : 1
- Luxe : 1
- Sante : 1
- Medias / Edition : 1

## Jalons projet

- Jalon 1 - Cadrage BPMN : 2026-08-18
- Jalon 2 - Modelisation donnees : 2026-08-22
- Jalon 3 - Analyse SQL : 2026-08-26
- Jalon 4 - Reporting Power BI : 2026-09-02
- Jalon 5 - Bilan et pilotage projet : 2026-09-05

## Decisions de presentation GitHub

- Presenter le projet comme une V1 livree et un produit vivant.
- Publier uniquement le dataset anonymise, le dictionnaire, le schema SQLite et les requetes SQL.
- Ne pas promettre de dashboard Power BI final tant que les captures ne sont pas pretes.
- Documenter clairement l'echec temporaire de connexion directe Jira -> Power BI et la solution V1 CSV/SQLite.
