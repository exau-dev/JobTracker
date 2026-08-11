# JobTracker - Systeme de suivi de candidatures

JobTracker est un projet personnel de suivi de candidatures, construit comme un cas pratique Business Analyst / AMOA : cadrage du besoin, structuration Jira, modelisation de donnees, analyse SQL et restitution Power BI.

Le depot presente une V1 livree pour portfolio. Le suivi operationnel, lui, reste vivant : les candidatures reelles continuent d'etre alimentees et le reporting Power BI evoluera avec les prochains exports.

## Positionnement du projet

Ce projet n'est pas une mission realisee en entreprise. Il s'agit d'un projet personnel de montee en competence, derive d'un besoin reel : piloter efficacement une recherche d'alternance / stage, prioriser les relances et objectiver le pipeline de candidatures.

Les donnees publiees dans ce depot sont anonymisees et simplifiees a partir du suivi reel. Les noms d'entreprises, contacts, liens d'offres, notes personnelles, descriptions Jira et identifiants internes ne sont pas publies.

## Livrables V1

| Brique | Statut | Commentaire |
| --- | --- | --- |
| Cadrage du besoin | Livre | Probleme, objectifs, workflow de suivi et regles de pilotage. |
| Jira Kanban | Livre | Board structure par secteurs, statuts, priorites, jalons et taches projet. |
| Dataset public | Livre | CSV anonymise derive du suivi reel, pret pour SQL / Power BI. |
| Modele SQLite | Livre | Schema reproductible, sans base binaire dans le depot. |
| Analyse SQL | Livre | Requetes de controle qualite, KPI et analyse secteur/canal. |
| Power BI | En cours | Connexion CSV/SQLite commencee ; captures de dashboard a ajouter. |
| Connexion Jira directe | Piste V2 | Tentative non finalisee ; la V1 retient un export anonymise versionnable. |

## Arborescence

```text
01-cadrage/              Cadrage fonctionnel et processus cible
02-donnees/              Dataset anonymise, dictionnaire et schema SQLite
03-analyse-sql/          Requetes SQL de controle et d'analyse
04-reporting-powerbi/    Notes Power BI, mesures et prochaines captures
05-gestion-projet/       Synthese Jira, jalons, risques et decisions
06-roadmap/              Roadmap V1 -> V2
```

## Dataset publie

Le fichier `02-donnees/candidatures_anonymisees.csv` contient 33 lignes de candidatures anonymisees. Le separateur CSV est le point-virgule afin de faciliter l'ouverture dans Excel et Power BI en configuration francaise.

Principes retenus :

- les entreprises sont supprimees du dataset public ;
- les postes, secteurs, statuts, canaux, types de contrat, scores et echeances d'action sont conserves ;
- les donnees manquantes sont gardees volontairement avec `Non renseigne` ou une valeur vide pour demontrer les controles qualite ;
- aucun export Jira brut n'est versionne dans le depot.

## Pourquoi ce choix technique ?

Pour un portfolio public, le plus propre est de publier un CSV anonymise et un schema SQLite plutot qu'une base `.db` binaire. Le CSV est lisible, auditable dans GitHub, simple a charger dans Power BI, et il permet de montrer la demarche SQL sans exposer la source personnelle.

## Etat Power BI

Power BI a ete commence avec une approche CSV / SQLite. La connexion directe a Jira n'est pas encore stabilisee ; elle est conservee comme amelioration V2. Les captures de dashboard seront ajoutees quand les visuels seront finalises.

## Competences demontrees

- Analyse du besoin et transformation d'un besoin personnel en cas d'usage structure.
- Pilotage Kanban avec Jira : backlog, statuts, jalons, priorites et risques.
- Modelisation de donnees et preparation d'un jeu de donnees public.
- Requetes SQL pour controler la qualite et produire des indicateurs.
- Construction progressive d'un reporting Power BI coherent avec la source de donnees.
