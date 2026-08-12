# Dictionnaire de donnees

Source publique : `candidatures_anonymisees.csv`  
Date de generation : 2026-08-12  
Nombre de lignes : 33  
Separateur CSV : `,`

## Colonnes

| Colonne | Type conseille | Description | Exemple |
| --- | --- | --- | --- |
| `id_candidature` | Texte | Identifiant public anonymise. | `CAND-001` |
| `poste` | Texte | Intitule du poste, sans nom d'entreprise. | `Business Analyst` |
| `secteur` | Texte | Secteur de rattachement issu du parent Jira. | `Assurance` |
| `statut` | Texte | Etat du pipeline au moment de l'export. | `Candidature envoyee` |
| `type_contrat` | Texte | Alternance, stage ou `Non renseigne`. | `Alternance` |
| `canal_principal` | Texte | Premier canal identifie dans les labels Jira. | `Site carriere` |
| `canaux_secondaires` | Texte | Canaux complementaires separes par `|`. | `LinkedIn` |
| `score_adequation` | Entier | Score indicatif de pertinence quand il existe. | `84` |
| `priorite` | Texte | Priorite Jira au moment de l'export. | `Medium` |
| `favori` | Entier booleen | `1` si l'opportunite etait marquee favorite, sinon `0`. | `1` |
| `echeance_action` | Date ISO | Date cible de prochaine action ou valeur vide. | `2026-09-03` |
| `tags_metier` | Texte | Tags d'analyse complementaires. | `Conseil / ESN` |

## Regles d'anonymisation

- Suppression des noms d'entreprises du fichier public.
- Suppression des identifiants Jira internes (`CA-...`).
- Suppression des contacts, liens, commentaires et descriptions longues.
- Conservation des categories utiles a l'analyse : secteur, statut, canal, type, score, priorite.
- Conservation volontaire de certaines valeurs manquantes pour demontrer les controles qualite.

## Limites connues

Le dataset est un extrait anonymise d'un suivi vivant. Les volumes sont donc modestes et les indicateurs servent surtout a demontrer la methode : structuration, controle, requetage et visualisation.
