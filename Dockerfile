FROM mattermost/mattermost-team-edition:9.11.0

USER root

# Copier les scripts et configurations personnalisés du dépôt
COPY . /mattermost/

# S'assurer que les scripts sont exécutables
RUN chmod +x /mattermost/run.sh /mattermost/lib/envsubst

# Heroku injecte le PORT dynamiquement, run.sh s'en occupera
ENV PORT=8065
EXPOSE 8065

# Utiliser le script de démarrage qui gère la configuration Heroku
CMD ["/mattermost/run.sh"]
