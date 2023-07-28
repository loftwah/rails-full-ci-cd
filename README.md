# Loftwah's Rails Demo App

This is a demo app for Rails. I will do random stuff here so please don't use it for anything you care about.

The info for this is [here](https://github.com/loftwah/tech-101/tree/main/misc/drills/3-rails-full-ci-cd)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Ensure you have Docker and Docker Compose installed on your machine. 

### Installing and Running

1. Clone the repository:

```bash
git clone git@github.com:loftwah/rails-full-ci-cd.git
```

1. Change into the project directory:

```bash
cd rails-full-ci-cd
```

1. Copy the example environment variables file and fill it out with your own configuration: `rails secret` for `SECRET_KEY_BASE` and `rails credentials:edit` for `DATABASE_PASSWORD`:

```bash
cp .env.example .env
```

4. Start the application with Docker Compose:

```bash
docker compose up
```

Your application should now be running at `localhost:3000`. Enjoy exploring the Rails Demo application!
