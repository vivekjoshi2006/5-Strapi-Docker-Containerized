# 🚀 Dockerized Strapi with Nginx and PostgreSQL

This project demonstrates a fully containerized **Strapi CMS** architecture, using **PostgreSQL** as the primary database and **Nginx** as a high-performance Reverse Proxy. The entire setup is orchestrated using **Docker Compose** for seamless deployment and scalability.

## 🛠️ Tech Stack

* **CMS:** Strapi (Node.js based)
* **Database:** PostgreSQL
* **Proxy:** Nginx
* **Containerization:** Docker & Docker Compose

## 🏗️ Architecture Overview

The setup consists of three interconnected services running in a custom bridge network:

1. **`strapi_app`**: The core CMS application.
2. **`strapi-db`**: PostgreSQL database for persistent storage.
3. **`nginx_proxy`**: Acts as a gateway, forwarding traffic to the Strapi application on port 80.

---

## 🚀 How to Run Locally

### Prerequisites

* Docker and Docker Compose installed.
* Git installed.

### Installation Steps

1. **Clone the Repository:**
```bash
git clone https://github.com/vivekjoshi2006/6-Dockerized-Strapi-with-Nginx.git
cd 6-Dockerized-Strapi-with-Nginx

```


2. **Spin up the Containers:**
```bash
docker-compose up -d --build

```


3. **Verify Running Services:**
```bash
docker ps

```


*You should see three containers in the "Up" status.*
4. **Access the Application:**
* **Strapi Admin:** `http://localhost:80/admin` (via Nginx)
* **API Endpoint:** `http://localhost:80/api`



---

## 🛡️ Nginx Configuration

The Nginx service is configured as a reverse proxy to handle incoming requests on port 80 and route them to the Strapi container on port 1337. This adds a layer of security and allows for better load handling.

## 🌐 Networking

All containers are part of a private network called `strapi-net`. This ensures that the database is not exposed directly to the internet, and only Nginx can communicate with the external world.

