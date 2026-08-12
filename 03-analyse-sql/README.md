# Analyse SQL

Ce dossier regroupe les requetes SQL utilisees pour analyser le dataset public JobTracker.

## Scripts

- `01_controle_qualite.sql` : volume, repartition par statut, champs manquants et doublons potentiels.
- `02_kpi_pipeline.sql` : KPI de pilotage du pipeline, actions a venir et opportunites prioritaires.
- `03_analyse_secteur_canal.sql` : analyses par secteur, canal principal, score et type de contrat.

## Dialecte cible

Les requetes sont ecrites pour SQLite afin de rester simples a executer localement. Elles sont aussi transposables vers Power BI / Power Query pour alimenter des mesures de reporting.

## Objectif portfolio

La logique SQL montre la demarche BA / data : controler la qualite de donnees avant de produire des KPI, puis segmenter les resultats pour aider a la decision.
