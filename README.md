# 🎓 Examination Management System

  A desktop-based exam scheduling and result management application built using Java, Swing (GUI), and MySQL.

  ## 🚀 Features

  - 🔐 Login & Signup (Student + Teacher)
  - 👨‍🏫 Teacher Panel
    - Create class groups
    - Add students to groups
    - Schedule exams
    - Publish exam results
  - 🎓 Student Panel
    - Register for available exams
    - View scheduled exams
    - View exam results
  - 🗄️ MySQL Database Integration
  - 🧩 MVC Architecture

  ## ⚙️ Design Patterns Used

  - **Strategy** — Password Change (`PasswordChangeStrategy`)
  - **Proxy** — Exam Registration Permission (`ExamRegistrationProxy`)
  - **Factory** - UI View Creation (`WelxomeViewFactory`)

  ## 🛠️ Tech Stack

  | Layer        | Technology |
  |--------------|------------|
  | Frontend     | Java Swing |
  | Backend      | Java (JDK 8+) |
  | Database     | MySQL |
  | Data Access  | JDBC |
  | Architecture | MVC |

  ## 📁 Project Structure

  ```
  Examination-Management-System/
  │
  ├── src/
  │   ├── controller/     # Controllers – business logic
  │   ├── model/          # JDBC database models
  │   └── view/           # Swing GUI screens
  │
  ├── db/
  │   └── init.sql        # Database schema (run this first)
  │
  ├── Exam System/lib/
  │   └── README.md       # Notes for JDBC driver (if needed)
  │
  ├── pom.xml             # Maven build file
  └── README.md           # Project documentation
  ```

  ## 🧰 Installation & Setup

  1. Clone the Repository

  ```bash
  git clone https://github.com/sameekshajs2003/Examination-Management-System.git
  cd Examination-Management-System
  ```

  2. Create the Database

  Run (from the MySQL client):

  ```sql
  SOURCE db/init.sql;
  ```

  3. Configure MySQL Credentials

  Update your DB username & password in:

  ```
  src/model/UserModel.java
  ```

  4. Build & Run

  ```bash
  mvn clean package
  mvn exec:java -Dexec.mainClass="view.LoginView"
  ```

  ## 🖥️ Screenshots 
<table> <tr> <td align="center"><b>Login Page</b><br> <img src="https://github.com/user-attachments/assets/6d4d4193-bf50-426f-8873-d1c9d1a68aeb" width="420"> </td> <td align="center"><b>Sign Up Page</b><br> <img src="https://github.com/user-attachments/assets/5f1a5d1e-8ff1-4ab9-aa75-fbd46b04c812" width="420"> </td> </tr> <tr> <td align="center"><b>Student Dashboard</b><br> <img src="https://github.com/user-attachments/assets/25129b58-3157-48f9-af5b-5f98d39867ea" width="420"> </td> <td align="center"><b>Teacher Dashboard</b><br> <img src="https://github.com/user-attachments/assets/0ba7ca19-5c16-46da-a0c1-f6cfb79c5570" width="420"> </td> </tr> <tr> <td align="center"><b>Exam Scheduling</b><br> <img src="https://github.com/user-attachments/assets/455be152-a886-4608-9856-e75b2f6419d0" width="420"> </td> </tr> </table>

  ## 📌 Future Improvements

  - Password hashing
  - Role-based authorization
  - Better UI/UX
  - Unit tests
  - Migration to JavaFX or Spring Boot

