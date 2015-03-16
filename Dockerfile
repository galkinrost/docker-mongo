FROM mongo:3.0.0

# set Europe/Moscow timezone
RUN echo "Europe/Moscow" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

COPY docker-entrypoint.sh /entrypoint.sh
COPY set_mongodb_password.sh /
RUN chmod +x /*.sh
