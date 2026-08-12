# Reporting Power BI

## Statut actuel

Power BI est commence, mais les visuels definitifs et les captures de dashboard ne sont pas encore disponibles. La V1 documentee dans ce depot assume cette situation : le reporting est en cours, tandis que la source CSV/SQLite, les KPI et les requetes SQL sont disponibles.

## Source recommandee pour la V1

Pour un depot public, la source la plus simple et robuste est :

```text
02-donnees/candidatures_anonymisees.csv
```

Ce choix evite d'exposer la session Jira personnelle et permet de reconstruire le reporting a partir d'un fichier versionne. SQLite reste utile pour apprendre le modele relationnel et tester les requetes, mais le CSV est plus lisible pour GitHub et plus direct pour Power BI.

## Connexion Jira directe

La connexion directe Jira -> Power BI n'est pas livree en V1. Elle reste une piste V2, car elle demande de securiser l'authentification, le filtrage des champs sensibles et le rafraichissement.

Pistes possibles :

- export Jira manuel puis anonymisation avant publication ;
- Power Query via API Jira REST avec authentification dediee ;
- automatisation intermediaire qui extrait seulement les champs publics ;
- dataset Power BI base sur CSV tant que le reporting public n'a pas besoin de temps reel.

## Pages de dashboard prevues

1. Vue pipeline : nombre de candidatures par statut, taux de refus, candidatures envoyees.
2. Vue priorisation : favoris, scores d'adequation, echeances de prochaine action.
3. Vue analyse : repartition par secteur, canal et type de contrat.
4. Vue qualite de donnees : champs manquants et tickets a enrichir.

## Mesures DAX de depart

```DAX
Total candidatures = COUNTROWS(candidatures)

Candidatures envoyees =
CALCULATE(
    [Total candidatures],
    candidatures[statut] = "Candidature envoyee"
)

Refus =
CALCULATE(
    [Total candidatures],
    candidatures[statut] = "Refus"
)

Taux refus = DIVIDE([Refus], [Total candidatures])

Score moyen = AVERAGE(candidatures[score_adequation])

Favoris =
CALCULATE(
    [Total candidatures],
    candidatures[favori] = 1
)
```

## Captures a ajouter

Les captures seront ajoutees quand le dashboard sera suffisamment stable : page pipeline, page analyse secteur/canal et page qualite de donnees.
