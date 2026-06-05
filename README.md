Ansible Role Grav

Deploy a production-ready Grav CMS instance using Docker, GitHub Container Registry (GHCR), GitHub Actions, and Ansible.

This project follows the same architecture used throughout the lavallee.tech infrastructure:

Local development with Docker Compose
Automated image builds with GitHub Actions
Image storage in GitHub Container Registry (GHCR)
Automated deployment with Ansible
Separate staging and production environments
Architecture
Developer
    │
    ├── git push
    │
    ▼
GitHub Repository
    │
    ├── GitHub Actions
    │
    ▼
GHCR Docker Registry
    │
    ├── ghcr.io/sepp67/grav-nginx:staging
    └── ghcr.io/sepp67/grav-nginx:prod
    │
    ▼
Ansible
    │
    ▼
Docker Host
    │
    ▼
Grav CMS Container
Repository Structure
ansible-role-grav/
├── .github/
│   └── workflows/
├── docker/
│   ├── entrypoint.sh
│   ├── nginx.conf
│   └── php-fpm.conf
├── grav/
│   └── user/
├── inventory/
├── playbooks/
├── roles/
│   └── grav_docker/
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── requirements.yml
└── README.md
Features
Grav CMS with Admin Plugin
Nginx and PHP-FPM in a single container
Docker-based deployment
Persistent content storage
GitHub Actions CI/CD pipeline
GitHub Container Registry integration
Ansible deployment role
Staging and Production support
Local Development
Build the image
docker compose build
Start the container
docker compose up -d
Open Grav
http://localhost:8080
Open Grav Admin
http://localhost:8080/admin

Create the first administrator account when prompted.

View logs
docker compose logs -f
Stop the environment
docker compose down
Remove all data
docker compose down -v
