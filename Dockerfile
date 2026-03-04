FROM mattermost/mattermost-team-edition:9.11.0
USER root
ENV MM_SERVICESETTINGS_LISTENADDRESS=":8065"
EXPOSE 8065
CMD ["/mattermost/bin/mattermost"]
