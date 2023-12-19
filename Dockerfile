ARG POSTGRES_VERSION=15
ARG OS=ubuntu

FROM binaryoverload/postgresql-client:${POSTGRES_VERSION}-${OS}