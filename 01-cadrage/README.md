# Cadrage fonctionnel

## Probleme traite

Le suivi de candidatures devient rapidement difficile a piloter quand les offres, relances, canaux de contact et statuts sont disperses entre plusieurs outils. JobTracker structure ce suivi dans un flux simple : identifier les opportunites, qualifier les priorites, envoyer les candidatures, suivre les relances et analyser les resultats.

## Objectifs metier

- Centraliser les candidatures dans un tableau Kanban Jira.
- Prioriser les opportunites selon le secteur, le type de contrat, le canal et le score d'adequation.
- Suivre les actions a venir : candidature, relance, entretien, bilan.
- Produire un dataset anonymise pour analyse SQL et Power BI.
- Capitaliser sur la demarche BA / AMOA dans un depot portfolio.

## Perimetre V1

Inclus :

- workflow de suivi de candidatures ;
- secteurs sous forme d'epics Jira ;
- dataset public anonymise ;
- requetes SQL de controle et d'analyse ;
- documentation de la demarche Power BI.

Hors perimetre V1 :

- automatisation temps reel Jira -> Power BI ;
- publication de contacts, liens d'offres ou notes personnelles ;
- captures dashboard definitives.

## Workflow cible

```text
Backlog -> Dossier a preparer -> Candidature envoyee -> Relance a faire -> Entretien -> Refus / Offre acceptee
```

Le statut `Offre acceptee` est identifie comme besoin cible. Son ajout depend de la configuration du workflow Jira et reste une amelioration V2.
