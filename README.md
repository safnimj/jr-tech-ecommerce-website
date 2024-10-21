Here’s the updated `README.md` file with instructions on how to run the project and login details:

### **README.md File:**

```markdown
# JR Tech E-Commerce Website

## Project Overview
This project is an e-commerce website developed for JR Tech, an electronic store, as part of my Higher National Diploma in Information Technology. The website is designed to enhance customer experience by offering an intuitive shopping platform.

### Features

#### **User Features:**
- User Registration
- User Login System
- Change Password
- Forgot Password
- Profile Management System
- Shopping Cart
- Wishlist
- Order History

#### **Admin Features:**
- Product Management (Add, Update, Delete)
- Order Management System
- User Management
- Category/Sub-Category Creation
- And many more

### Technologies Used
- **Frontend:** HTML5, CSS3, JavaScript, React.js
- **Backend:** PHP, Node.js
- **Database:** MySQL
- **Frameworks:** Laravel, Express.js
- **Tools:** Visual Studio Code, PhpStorm
- **Web Server:** Apache

### Setup Instructions

#### Step 1: Download the Project
- Download the project and unzip the files into your working directory (e.g., `htdocs` if using XAMPP).

#### Step 2: Setup the Database
1. Open **phpMyAdmin** from your localhost server (XAMPP or WAMP).
2. Create a new database named **`shopping`**.
3. Import the provided SQL file (`shopping.sql`) into the **shopping** database.

#### Step 3: Configure Database Connection
1. Open the project directory and locate the `config.php` or `db.php` file.
2. Ensure the database configuration matches your local settings:
   ```php
   $host = "localhost";
   $db = "shopping";
   $user = "root";
   $pass = ""; // Leave empty if no password
   ```

#### Step 4: Run the Project
- Open your web browser and navigate to:
  - **User portal link:** `http://localhost/shopping`
  - **Admin panel link:** `http://localhost/shopping/admin`

#### Step 5: Login Details

- **User Login Credentials:**
   - **Username:** buyer@jr.lk
   - **Password:** w@Xn3Q9e9NPAWw@

- **Admin Login Credentials:**
   - **Username:** admin
   - **Password:** Test@123

### License
This project is licensed under the MIT License.
