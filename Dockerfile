ARG POSTGRES_VERSION=15

FROM binaryoverload/postgresql-client:${POSTGRES_VERSION}-ubuntu

RUN apt-get -y update && apt-get -y --no-install-recommends install python3-pip \
    && apt-get -y --purge autoremove && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install s3cmd

ENV PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

COPY ./scripts /scripts

RUN chmod 0755 /scripts/*.sh


