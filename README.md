# FeelDance

## Description

This is a Content Management System (CMS) for dance classes. It allows users to view the available classes and their respective instructors. The admin has full CRUD (Create, Read, Update, Delete) functionality and can allocate instructors to classes. The project is styled using Bootstrap and custom CSS.

## Features

- **User Features:**
  - View available dance classes
  - View members of each class, including instructors

- **Admin Features:**
  - Create, read, update, and delete classes
  - Create, read, update, and delete instructors
  - Allocate instructors to classes

## Technologies Used

- PHP
- MySQL
- Bootstrap
- CSS

## Installation and Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Bhavya1307/dance-class-cms.git
   ```

2. **Move the project to the htdocs directory:**
   ```bash
   mv feeldance /path-to-your-mamp/htdocs/
   ```

3. **Create a database:**
   - Open phpMyAdmin (usually accessible via http://localhost/phpmyadmin)
   - Create a new database called feeldance2

4. **Import the database schema:**
   - Import the database.sql file located in the project root directory into the feeldance2 database

5. **Update database configuration:**
   - Open config.php and update the database configuration with your MySQL username and password

6. **Run the project:**
   - Start your MAMP (or any other local server)
   - Navigate to http://localhost/feeldance in your web browser

## Admin Usage

- Navigate to http://localhost/feeldance/admin in your web browser
- username: feel
- password: feel


## Contributors

- Anant Chauhan
- Anish Patel
- Bhavya Patel
- Karishma Patel

We welcome contributions from the community! If you would like to contribute to this project, please fork the repository and submit a pull request.
