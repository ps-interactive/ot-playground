FROM zakharbz/labshock-scada:v1.0.0

# patch
COPY ./patch/client/src/favicon.ico /usr/src/app/FUXA/client/dist/favicon.ico
COPY ./patch/client/src/index.html /usr/src/app/FUXA/client/dist/index.html

# entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# app data files
COPY ./appdata /usr/src/app/FUXA/server/_appdata

# start app
ENTRYPOINT ["/entrypoint.sh"]
CMD ["docker-entrypoint.sh", "npm", "start"]