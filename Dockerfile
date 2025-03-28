# Imagen base
FROM python:3.11-slim

# Establece el directorio de trabajo
WORKDIR /app

# Instalamos netcat y pip requirements
RUN apt-get update \
    && apt-get install -y netcat-openbsd \
    && pip install --upgrade pip \
    && apt-get clean

# Copiamos los archivos del proyecto
COPY . .

# Instalamos dependencias del proyecto
RUN pip install -r requirements.txt

# Damos permisos de ejecución al script de espera
RUN chmod +x wait-for-db.sh

# Exponemos el puerto de Django
EXPOSE 8000

# Comando de inicio (puede ir en docker-compose también)
CMD ["./wait-for-db.sh", "python", "manage.py", "runserver", "0.0.0.0:8000"]
