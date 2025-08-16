# Init-Auth-Project
PublicRoute and PrivateRoute Components

A simple full-stack application featuring a user-facing form and a backend with JWT-based user authentication. This project serves as a foundational template for applications requiring user login and protected routes. The frontend uses React to manage authentication state and protect pages, while the Node.js backend handles user registration, login, and token generation.

# Core Features

* User Registration & Login: Secure endpoints for creating new users and authenticating existing ones.
* JWT Authentication: The backend generates JSON Web Tokens (JWT) upon successful login.
* Protected Frontend Routes: The React frontend protects certain pages, making them accessible only to authenticated users.
* Token Expiration Handling: The frontend automatically detects expired tokens and logs the user out.
* State Management: Uses React Context API for managing global authentication state (token, user data).


# Tech Stack
* Frontend: React
* Backend: Node.js | Express.js
* Authentication: JSON Web Token (jsonwebtoken) |  bcrypt for password hashing
* Database: (Assumed) MongoDB with Mongoose or PostgreSQL with Sequelize.


# How Authentication Works

1. Login: A user submits their credentials via the login form.
2. Token Generation: The Express server validates the credentials. If correct, it generates a JWT containing the user's ID and an expiration date.
3. Token Storage: The JWT is sent back to the React client, which stores it in localStorage. The application state is updated to reflect that the user is authenticated.
4. Authenticated Requests: For requests to protected API endpoints, the client attaches the JWT to the Authorization header (Bearer <token>).
5. Token Validation: The server uses middleware to verify the JWT on incoming requests. If the token is valid and not expired, access is granted.
6. Logout/Expiration: The client removes the token from localStorage on logout or when the token is detected as expired, effectively ending the user's session.

