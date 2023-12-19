if [ -z "${STORAGE_BACKEND}" ]; then
    STORAGE_BACKEND="FILE"
fi

if [ -z "${ACCESS_KEY_ID}" ]; then
    ACCESS_KEY_ID=
fi

if [ -z "${SECRET_ACCESS_KEY}" ]; then
    SECRET_ACCESS_KEY=
fi

if [ -z "${DEFAULT_REGION}" ]; then
    DEFAULT_REGION=us-west-2
fi

if [ -z "${BUCKET}" ]; then
    BUCKET=backups
fi

if [ -z "${HOST_BASE}" ]; then
    HOST_BASE=
fi

if [ -z "${HOST_BUCKET}" ]; then
    HOST_BUCKET=
fi

if [ -z "${SSL_SECURE}" ]; then
    SSL_SECURE=True
fi

if [ -z "${DUMP_ARGS}" ]; then
    DUMP_ARGS='-Fc'
fi

if [ -z "${RESTORE_ARGS}" ]; then
    RESTORE_ARGS='-j 4'
fi

if [ -z "${POSTGRES_USER}" ]; then
    POSTGRES_USER=
fi

if [ -z "${POSTGRES_PASS}" ]; then
    POSTGRES_PASS=
fi

if [ -z "${POSTGRES_PORT}" ]; then
    POSTGRES_PORT=5432
fi

if [ -z "${POSTGRES_HOST}" ]; then
    POSTGRES_HOST=
fi

if [ -z "${ARCHIVE_FILENAME}" ]; then
    ARCHIVE_FILENAME=
fi

if [ -z "${REMOVE_BEFORE}" ]; then
    REMOVE_BEFORE=
fi

if [ -z "${PG_CONN_PARAMETERS}" ]; then
    PG_CONN_PARAMETERS="-h ${POSTGRES_HOST} -p ${POSTGRES_PORT} -U ${POSTGRES_USER}"
fi

if [ -z "${PG_DUMP_PARAMETERS}" ]; then
    PG_DUMP_PARAMETERS="-h ${POSTGRES_HOST} -p ${POSTGRES_PORT} -U ${POSTGRES_USER}"
fi

if [ -z "${PG_DUMP_ALL_PARAMETERS}" ]; then
    PG_DUMP_ALL_PARAMETERS="-h ${POSTGRES_HOST} -p ${POSTGRES_PORT} -U ${POSTGRES_USER}"
fi

if [ -z "${DBLIST}" ]; then
    DBLIST=
fi

if [ -z "${RUN_ONCE}" ]; then
    RUN_ONCE=FALSE
fi

if [ -z "${DB_DUMP_ENCRYPTION}" ]; then
    DB_DUMP_ENCRYPTION=FALSE
fi

if [ -z "${DB_DUMP_ENCRYPTION_PASS_PHRASE}" ]; then
    STRING_LENGTH=30
    random_pass_string=$(cat /dev/urandom | tr -dc '[:alnum:]' | head -c "${STRING_LENGTH}")
    DB_DUMP_ENCRYPTION_PASS_PHRASE=${random_pass_string}
    echo $DB_DUMP_ENCRYPTION_PASS_PHRASE >> /data/passphrase
fi