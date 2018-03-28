## Remote Learning Management System

## Getting started

### Prepare dependencies

Make sure you have installed application dependencies:

- Ruby 2.5.0
- Rails 5.1.5
- Postgresql 9.6.5
- Yarn package manager

### Bootstrap application

Clone application repository

```bash
git clone https://github.com/zismailov/RemoteLearning
cd RemoteLearning
```

Run setup script

```bash
docker-compose up
bin/setup
```

Run tests and code quality checking tools to make sure all dependencies are satisfied and application works correctly

```bash
bin/ci
```

Run application and navigate at https://localhost:3000 using web browser to open application

```bash
bin/server
```
