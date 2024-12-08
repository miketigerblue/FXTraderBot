FROM postgres:15
ENV POSTGRES_USER=fxuser
ENV POSTGRES_PASSWORD=securepassword
ENV POSTGRES_DB=fxtrader
COPY db/init.sql /docker-entrypoint-initdb.d/
