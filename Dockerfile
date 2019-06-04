FROM postgres:10.6-alpine as builder

RUN apk add su-exec

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=postgres_data_development

COPY pg_data.sql.gz /docker-entrypoint-initdb.d/
COPY generate_db_data.sh .
RUN ./generate_db_data.sh

FROM postgres:10.6-alpine

RUN apk add su-exec

# Have to repeat the env vars in the new build stage
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=postgres_data_development

COPY --from=builder postgres-data.tar.gz .
COPY run-db.sh .

ENTRYPOINT [ "/run-db.sh" ]
CMD [ "postgres" ]
