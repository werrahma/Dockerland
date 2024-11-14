Dockerland


Dockerland is a system administration project aimed at creating a small, virtualized infrastructure using Docker and Docker Compose. The project includes custom-built Docker images for multiple services, managed within a virtual machine. Each service runs in a dedicated container and is connected via a Docker network.


Project Overview

This project demonstrates:

    Containerized services including NGINX with TLS, WordPress with PHP-FPM, and MariaDB
    Docker Compose orchestration
    Volume management for data persistence
    Best practices in Dockerfile creation and container networking


Requirements

    Operating Environment: Virtual Machine
    Docker & Docker Compose: All services are containerized and orchestrated with Docker Compose.
    Containers and Services:
        NGINX: Configured with TLSv1.2 or TLSv1.3
        WordPress with PHP-FPM: Installed and configured, without NGINX
        MariaDB: Database for WordPress
    Volumes:
        Persistent storage for the WordPress database
        Persistent storage for WordPress site files
    Docker Network: Custom Docker network to link all containers

Project Structure

The file structure follows a specific setup:


├── Makefile                # Automates setup and build
├── srcs                    # Main directory for configuration
│   ├── docker-compose.yml  # Docker Compose configuration
│   ├── .env                # Environment variables
│   └── requirements        # Service requirements
│       ├── mariadb
│       │   └── Dockerfile  # Dockerfile for MariaDB
│       ├── nginx
│       │   └── Dockerfile  # Dockerfile for NGINX
│       └── wordpress
│           └── Dockerfile  # Dockerfile for WordPress


Project Goals

This project aims to:

    Provide a foundational understanding of Docker containerization and system administration.
    Enhance familiarity with Docker Compose and service orchestration.
    Build and configure a secure, production-like environment using Docker best practices.
