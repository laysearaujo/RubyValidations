# Demo Festalab

Demo Festalab is a basic web application built with Ruby on Rails for managing user information. It allows you to create, edit, and delete user records with validation for email, Brazilian CPF, and phone number formats.

## Getting Started

To get started with this project, follow these simple steps:

### Prerequisites

Make sure you have the following software installed on your system:

- Ruby (version X.X.X)
- Ruby on Rails (version X.X.X)
- A compatible database (e.g., PostgreSQL)

### Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/laysearaujo/RubyValidations.git
   ````
2. Navigate to the project directory:

    ```bash
    cd RubyValidations
    ````
3. Install Ruby dependencies:

    ```bash
    bundle install
    ````

4. Create the database and run migrations:
    ```bash
    rails db:create
    rails db:migrate
    ````
## Running the Application
### Start the local server:

```bash
rails server
```

Now, you can access the application in your web browser at http://localhost:3000/users.

## Features
User registration, editing, and deletion.
Email format validation.
Brazilian CPF format validation.
Brazilian phone number format validation.
User search by name, email, phone, or CPF.
Author
This project was created by Your Name.
