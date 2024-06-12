# ProjFinder

ProjFinder is a web application built with Django that allows users to upload their projects and connect with other developers to discuss and collaborate on their projects. It leverages Docker for containerization and easy deployment. The app also includes a REST API built with Django REST Framework (DRF) that allows you to access and manage data programmatically.

## Features

- Upload your projects
- Connect with other developers
- Discuss and collaborate on projects
- Search for projects by name or tag
- REST API for programmatic access to data

## Technologies

- Django
- Docker
- PostgreSQL (or another database of your choice)
- Django REST Framework (DRF) for the API
- HTML/CSS/JavaScript for the frontend

## Installation

### Prerequisites

- Docker
- Docker Compose

### Steps

1. **Clone the repository**: ```sh git clone https://github.com/your-username/projfinder.git cd projfinder ```

2. **Create and configure `.env` file**: Create a `.env` file in the root directory and add your environment variables. ```sh touch .env ``` Example `.env` file: ```dotenv SECRET_KEY=your-secret-key DEBUG=True ALLOWED_HOSTS=localhost,127.0.0.1 DATABASE_NAME=your-database-name DATABASE_USER=your-database-user DATABASE_PASSWORD=your-database-password DATABASE_HOST=db DATABASE_PORT=5432 ```

3. **Build and run the application with Docker Compose**: ```sh docker-compose up --build ```

4. **Run migrations and create a superuser**: Open a new terminal window and run the following commands: ```sh docker-compose exec web python manage.py migrate docker-compose exec web python manage.py createsuperuser ```

5. **Access the application**: The application should now be running at `http://localhost:8000`.

## Usage

### Running the Development Server

To start the development server, run: ```sh docker-compose up ```

### Accessing the Admin Interface

Navigate to `http://localhost:8000/admin` and log in with the superuser credentials you created.

### Uploading Projects

Once logged in, you can start uploading and managing your projects.

## API

ProjFinder provides a REST API for programmatic access to data. The API is built with Django REST Framework (DRF).

### Endpoints

- **List Projects**: `GET /api/projects/`
- **Retrieve a Project**: `GET /api/projects/{id}/`
- **Create a Project**: `POST /api/projects/`
- **Update a Project**: `PUT /api/projects/{id}/`
- **Delete a Project**: `DELETE /api/projects/{id}/`

### Example Requests

**List Projects**: ```sh curl -X GET http://localhost:8000/api/projects/ ```

**Retrieve a Project**: ```sh curl -X GET http://localhost:8000/api/projects/1/ ```

**Create a Project**: ```sh curl -X POST http://localhost:8000/api/projects/ -d '{ "name": "New Project", "description": "Description of the new project" }' -H "Content-Type: application/json" ```

**Update a Project**: ```sh curl -X PUT http://localhost:8000/api/projects/1/ -d '{ "name": "Updated Project", "description": "Updated description of the project" }' -H "Content-Type: application/json" ```

**Delete a Project**: ```sh curl -X DELETE http://localhost:8000/api/projects/1/ ```

## Contributing

We welcome contributions! If you would like to contribute, please follow these steps: 1. Fork the repository. 2. Create a new branch: `git checkout -b feature/your-feature-name`. 3. Make your changes and commit them: `git commit -m 'Add some feature'`. 4. Push to the branch: `git push origin feature/your-feature-name`. 5. Open a pull request. Please make sure your code adheres to our coding standards and passes all tests.


