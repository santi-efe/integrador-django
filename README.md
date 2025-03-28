# 🐳 Integrator Project - Django + PostgreSQL + Docker

This project is a web application built with Django and deployed using Docker Compose. It includes a Django backend and a PostgreSQL database—perfect for collaborative development in a containerized environment.

---

## 🚀 Requirements

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- (Optional) A Docker Hub account to push or pull images

---

## ⚙️ Setup Instructions

1. **Clone the repository:**

```bash
git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>
```

2. **Copy the example environment file:**

```bash
cp .env.example .env
```

3. **Build and start the services using Docker Compose:**

```bash
docker compose up --build
```

The app will be available at: [http://localhost:8000](http://localhost:8000)

---

## 🛠️ Useful Commands

- Run migrations:

```bash
docker compose exec web python manage.py migrate
```

- Create a superuser:

```bash
docker compose exec web python manage.py createsuperuser
```

- Access the Django admin panel:

```
http://localhost:8000/admin
```

---

## 🧪 Available Endpoints

| Endpoint         | Description                  |
|------------------|------------------------------|
| `/todos/`        | Task API                     |
| `/healthz/`      | Health check endpoint        |
| `/info/`         | Application info             |
| `/admin/`        | Django Admin Panel           |

---

## 🐙 Docker Hub

This project is also available as a pre-built image on Docker Hub:

```bash
docker pull <your-username>/integrador:latest
```

You can use this image directly in your `docker-compose.yml` without building it locally.

---

## 📄 License

This project is for educational use and is free to use and modify.
