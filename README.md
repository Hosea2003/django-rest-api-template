# Django REST API Template

This project is a template for building RESTful APIs using Django and Django REST Framework.

## Features
- Pre-configured Django REST Framework setup.
- Modular and scalable project structure.

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/Hosea2003/django-rest-api-template.git
    cd django-rest-api-template
    ```

2. Create and activate a virtual environment:
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows: venv\Scripts\activate
    ```

3. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```

4. Copy .env.example to a .env file and configure all the environment variables.

5. Apply migrations:
    ```bash
    python manage.py migrate
    ```

## Running the Project

1. Start the development server:
    ```bash
    python manage.py runserver
    ```

2. Open your browser and navigate to:
    ```
    http://127.0.0.1:8000/
    ```