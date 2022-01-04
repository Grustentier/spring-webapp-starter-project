# spring-webapp-starter-project

Just a simple starter project for web-application development based on spring framework in combination with thymeleaf, hibernate and a tiny mysql-database. This project can form the basis for a far more complex web system.

## Installation
1. Clone this repo
2. Within Eclipse:
  - Go to Help->Eclipse Marketplace.. and search with "spring" keyword to Spring Tools. Here especially after Spring Tools 4 and install it.
  - Import folder "spring-webapp" with selection wizard "Spring Boot" -> "Spring Starter Project"
  - Select Spring Starter Project Dependencies like "Spring Boot DevTools", "Rest Repositories", "Spring Web" etc.
3. Install mysql and a corresponding mysql-client like "mysql-workbench (linux)" or "SQLyog (Windows)"
4. Import the mysql_dump_03012022_1323.sql dump file (database name changes has to consider in application.properties file. Also changes at the database username and password.)

## Login
Two users are present in database. The passwords have been encrypted using BCrypt.
1. username: test-admin
   password: admin 
   roles:[ADMIN,USER]
2. username: test-user
   password: test 
   roles:[USER]
