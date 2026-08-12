# Donnees

Ce dossier contient la source publique anonymisee du projet JobTracker.

## Fichiers

- `candidatures_anonymisees.csv` : dataset public derive du suivi reel, sans noms d'entreprises ni informations personnelles.
- `dictionnaire_donnees.md` : definition des colonnes et regles d'anonymisation.
- `notes_anonymisation.md` : details des donnees retirees et conservees.
- `schema_sqlite.sql` : schema permettant de reconstruire une base SQLite a partir du CSV.

## Choix de publication

Le depot ne publie pas l'export Jira brut ni de fichier `.db` binaire. Le CSV est privilegie car il est lisible dans GitHub, versionnable et simple a importer dans Power BI ou SQLite.

## Import Power BI

Dans Power BI Desktop :

1. Selectionner `Obtenir les donnees > Texte/CSV`.
2. Choisir `candidatures_anonymisees.csv`.
3. Verifier que le separateur detecte est la virgule.
4. Typer `score_adequation` en nombre entier, `favori` en nombre entier et `echeance_action` en date.
