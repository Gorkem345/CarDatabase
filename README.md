# 🚗 Car Database Project

A simple and scalable **Car Database Application** developed to manage car-related data efficiently.
This project demonstrates backend development concepts such as REST APIs, database management, and CRUD operations.

---

## 📌 Features

* 📄 List all cars in the database
* ➕ Add new car records
* ✏️ Update existing car information
* ❌ Delete car entries
* 🔍 Search and filter cars
* 🗄️ Database integration (H2 / SQL based)

---

## 🛠️ Technologies Used

* Java
* Spring Boot
* RESTful API
* H2 Database / SQL
* Maven

---

## ⚙️ Installation & Setup

### 1. Clone the repository

```bash
git clone https://github.com/Gorkem345/CarDatabase.git
cd CarDatabase
```

### 2. Run the application

```bash
./mvnw spring-boot:run
```

or (Windows):

```bash
mvnw.cmd spring-boot:run
```

---

## 🚀 API Endpoints (Example)

| Method | Endpoint   | Description   |
| ------ | ---------- | ------------- |
| GET    | /cars      | Get all cars  |
| GET    | /cars/{id} | Get car by ID |
| POST   | /cars      | Add new car   |
| PUT    | /cars/{id} | Update car    |
| DELETE | /cars/{id} | Delete car    |

---

## 🧱 Project Structure

```
src/
 ├── main/
 │   ├── java/
 │   │   ├── controller/
 │   │   ├── service/
 │   │   ├── repository/
 │   │   └── model/
 │   └── resources/
 │       └── application.properties
```

---
## ⚙️ Requirements

Before running the project, make sure you have the following installed:

* PHP (>= 7.x)
* XAMPP (Apache & MySQL)
* Web Browser

---

## 🛠️ Setup with XAMPP

### 1. Install XAMPP

Download and install XAMPP from:
https://www.apachefriends.org/

---

### 2. Start Services

Open XAMPP Control Panel and start:

* Apache
* MySQL

---

### 3. Move Project Files

Copy the project folder into:

```
C:\xampp\htdocs\
```

---

### 4. Database Setup

1. Go to: http://localhost/phpmyadmin
2. Create a new database (e.g., `car_database`)
3. Import the provided `.sql` file

---

### 5. Run the Project

Open your browser and go to:

```
http://localhost/CarDatabase
```

---


## 🗃️ Database

* Uses **H2 in-memory database** for simplicity
* Easy to switch to MySQL/PostgreSQL

---

## 📷 Sample Data

Example Car Object:

```json
{
  "id": 1,
  "brand": "BMW",
  "model": "M3",
  "year": 2022,
  "price": 75000
}
```

---

## 🎯 Purpose of the Project

This project was developed to:

* Practice backend development
* Learn Spring Boot architecture
* Understand database operations
* Build a clean and maintainable API

---

## 🤝 Contributing

Contributions are welcome!
Feel free to fork the repository and submit a pull request.

---

## 📄 License

This project is open-source and available under the MIT License.

---

## 👨‍💻 Author

Developed by **Görkem Akdoğan, Gökdeniz İnan, Despoina Chatzopoulou**

---
