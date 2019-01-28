FROM postgres:10.6-alpine
COPY pg_data.sql.gz /docker-entrypoint-initdb.d/
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=postgres_data_docker
