FROM zakharbz/labshock-plc:v1.0.0

# app data files
COPY ./appdata/st_files /workdir/webserver/st_files
COPY ./appdata/openplc.db /workdir/webserver/openplc.db
COPY ./appdata/active_program /workdir/webserver/active_program

# copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["./start_openplc.sh"]