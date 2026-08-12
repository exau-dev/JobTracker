# Notes d'anonymisation

Ce dossier ne contient pas l'export Jira brut. Le fichier public a ete derive a partir du suivi reel, puis nettoye pour etre publiable dans un depot GitHub public.

## Donnees retirees

- Noms d'entreprises.
- Identifiants Jira internes.
- Contacts, recruteurs, emails, liens d'offres et notes personnelles.
- Descriptions longues des tickets.
- Historique detaille de creation / modification Jira.

## Donnees conservees

- Intitule de poste sans entreprise.
- Secteur, statut, type de contrat et canal de candidature.
- Score d'adequation quand il etait renseigne.
- Echeance de prochaine action quand elle existe.

## Pourquoi publier ce format ?

Le CSV anonymise est plus adapte a un portfolio qu'une base complete : il est lisible directement dans GitHub, facilement importable dans Power BI et SQLite, et il montre la demarche data sans exposer le suivi personnel.
