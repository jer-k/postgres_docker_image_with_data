# PostgresDockerImageWithData
### Dockerfile with tar database files
The next iteration of this Dockerfile builds on the first, but instead of supplying just a gzipped .sql file, 
instead a database is initialized and the files are wrapped up into a tarbal. 

The blog post detailing building this image can be found here[](). The code resides on the [master](https://github.com/jer-k/postgres_docker_image_with_data) branch.

### Dockerfile with a gzipped .sql file 
This is a Dockerfile that contains seeded data from the `postgres_data` Rails app. The app generates 100 Users with fake names and emails
and was used to create the `pg_data.sql` files. The Dockerfile uses the the gzipped file to generate a Postgresql image that has the Users
in it so that anyone could have a database with seeded data.

The original blog post detailing building the image can be found [here](https://jer-k.github.io/docker-postgres-image-with-seeded-data/)
with the code on the [with_gzipped_database](https://github.com/jer-k/postgres_docker_image_with_data/tree/with_gzipped_database) branch.



