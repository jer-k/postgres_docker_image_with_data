# PostgresDockerImageWithData

This is a Dockerfile that contains seeded data from the `postgres_data` Rails app. The app generates 100 Users with fake names and emails
and was used to create the `pg_data.sql` files. The Dockerfile uses the the gzipped file to generate a Postgresql image that has the Users
in it so that anyone could have a database with seeded data.

Blog post detailing building the image can be found [here](https://jer-k.github.io/docker-postgres-image-with-seeded-data/)
