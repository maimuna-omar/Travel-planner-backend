#Travel Planner - Backend
Welcome to the backend repository of the Travel Planner website. This application was designed to power a comprehensive travel planner, providing all necessary services to manage and enrich users' travel experiences.

#Features
The application includes:

User Authentication: This facilitates the process of user registration, login, and logout. The system ensures secure password hashing and validation via the BCrypt gem.

User Profile Management: Registered users have the ability to update their profiles and delete their accounts when necessary.

Trip Management: The application provides tools for users to create, update, delete, and view their trips.

#Tech Stack
This application's backend is built with the following technologies:

Ruby
Sinatra
PostgreSQL
ActiveRecord
BCrypt
Rack-CORS

#Getting Started
Follow these steps to get a local copy up and running:

Clone the repository onto your local machine.
Run bundle install to install all necessary dependencies.
Run rake db:create followed by rake db:migrate to set up the database.
Optional: Seed the database with dummy data by running rake db:seed.
Start the server by running rackup or rake server. This will default to localhost:9292 unless a different port is specified.

#API Endpoints
This application provides several RESTful API endpoints:

User Endpoints:
POST /users: Register a new user.
GET /users: Retrieve all registered users.
GET /users/:id: Retrieve a specific user and their associated trips.
POST /login: Authenticate an existing user.
POST /logout: Log out the current user.
PUT /users/:id: Update a user's profile.
DELETE /users/:id: Delete a specific user.
#Trip Endpoints:
GET /trips: Retrieve all trips.
GET /users/:user_id/trips: Retrieve all trips associated with a specific user.
POST /users/:id/trips: Create a new trip for a user.
GET /trips/:id: Retrieve a specific trip.
PUT /trips/:id: Update a specific trip.
DELETE /trips/:id: Delete a specific trip.

#Contributing
Your contributions are always welcome. To contribute:
Fork the repository.
Create a new branch on your forked repository.
Push your changes to the branch.
Create a Pull Request detailing your changes.

#Future Improvements
Additional trip details such as checklists, accommodation information, and more.
Integration with map or travel APIs for enhanced trip planning features.
Additional security enhancements.
We hope this guide has been helpful. Enjoy the journey with our Travel Planner!

#Frontend_repository_link
https://github.com/maimuna-omar/Travel-planner-frontend.git
