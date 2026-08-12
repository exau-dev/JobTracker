# Registre des risques et decisions

| Type | Sujet | Impact | Decision / mitigation |
| --- | --- | --- | --- |
| Confidentialite | Donnees issues d'un suivi reel | Risque d'exposer entreprises, contacts ou notes personnelles | Publier uniquement un CSV anonymise, sans export Jira brut. |
| Reporting | Power BI non finalise | Risque de surpromettre le livrable visuel | Presenter Power BI comme en cours et ajouter les captures plus tard. |
| Automatisation | Connexion directe Jira non stabilisee | Pas de rafraichissement temps reel en V1 | Retenir CSV/SQLite comme source V1, garder Jira REST en piste V2. |
| Qualite de donnees | Champs manquants sur certains tickets | KPI moins fiables | Conserver les manquants et les controler via SQL. |
| Portfolio | Projet vivant mais besoin d'une version livree | Message potentiellement ambigu | Positionner le depot comme V1 livree, puis roadmap d'amelioration continue. |
