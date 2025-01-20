# Project Title

This project is a simple Flask application that includes a basic addition function and a web server that displays a greeting message.

## Project Structure

- `myproject.py`: Main application file containing the Flask app and an addition function.
- `wsgi.py`: Entry point for running the Flask app.
- `test/flask_test.py`: Test file containing unit tests for the addition function.
- `.gitignore`: Specifies files and directories to be ignored by Git.
- `Dockerfile`: Docker configuration file for setting up the application environment.
- `.github/workflows/github-testing.yml`: GitHub Actions workflow for testing and deploying the application.

## Prerequisites

- Docker
- Python 3.x
- pip

## Setup

1. Clone the repository:
    ```sh
    git clone https://github.com/devops-ecole89/Devops-Mael.git
    cd Devops-Mael
    ```

2. Build the Docker image:
    ```sh
    docker build -t myflaskapp .
    ```

3. Run the Docker container:
    ```sh
    docker run -d -p 5000:5000 myflaskapp
    ```

4. Access the application:
   Open your web browser and go to `http://localhost:5000`.

## Running Tests

To run the tests, execute the following command:
```sh
docker exec $(docker ps -lq) python -m pytest
```

## GitHub Actions

The project includes a GitHub Actions workflow that:
- Builds the Docker image.
- Runs the Docker container.
- Executes the tests.
- Pushes the Docker image to Docker Hub if tests pass.
- Merges changes to the `staging` branch if tests pass.
