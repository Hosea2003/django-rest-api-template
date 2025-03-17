python manage.py collectstatic --no-input

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! pg_isready -h $SQL_HOST -p $SQL_PORT -q; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

python manage.py migrate

echo "Running the server..."

exec "$@"