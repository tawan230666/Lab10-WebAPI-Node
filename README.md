# Lab10 WebAPI (Node.js + MySQL) – Fighter Jet Products

## 📌 Project Overview
สร้าง Web API สำหรับจัดการสินค้า (products) โดยใช้ **Node.js + Express + MySQL (XAMPP)**  
ข้อมูลสินค้าเป็นโมเดล/ของสะสมเกี่ยวกับเครื่องบินรบ (25 รายการ)  
รองรับการทำงาน CRUD:
- GET all products
- GET single product
- POST (add new product)
- PUT (update product)
- DELETE (remove product)

## 🛠️ Tech Stack
- Node.js + Express
- MySQL (XAMPP / phpMyAdmin)
- dotenv (config)
- mysql2 (connection pool)
- Postman (test API)

## ⚙️ Setup
1. เปิด XAMPP → Start Apache + MySQL  
2. เข้า **phpMyAdmin** → Import `database.sql`  
3. Clone โปรเจกต์จาก GitHub
   ```bash
   git clone https://github.com/<your-username>/Lab10-WebAPI-Node.git
   cd Lab10-WebAPI-Node
ติดตั้ง dependencies

npm install


สร้างไฟล์ .env จาก .env.example

PORT=3000
DB_HOST=localhost
DB_USER=root
DB_PASS=
DB_NAME=lab10_webapi

▶️ Run
npm run dev


API จะรันที่ http://localhost:3000

📡 API Examples
1) GET all products
GET http://localhost:3000/products

2) GET single product
GET http://localhost:3000/products/1


Response:

{
  "id": 1,
  "title": "F-16 Fighter Jet Model 1:72",
  "price": 1290,
  "description": "Plastic model kit scale 1:72, pre-painted, perfect for collection or display.",
  "category": "models",
  "image": "https://example.com/img/f16-1-72.jpg"
}

3) POST new product
POST http://localhost:3000/products
Content-Type: application/json


Body:

{
  "title": "F-18 Super Hornet Model 1:72",
  "price": 1490,
  "description": "High-detail model for collection.",
  "category": "models",
  "image": "https://example.com/img/f18-1-72.jpg"
}

4) PUT update product
PUT http://localhost:3000/products/1
Content-Type: application/json


Body:

{
  "title": "F-16 Fighting Falcon Model (Updated)",
  "price": 1390,
  "description": "Updated version with new decals.",
  "category": "models",
  "image": "https://example.com/img/f16-updated.jpg"
}

5) DELETE product
DELETE http://localhost:3000/products/1

🖼️ Screenshots

phpMyAdmin: ตาราง products

Postman: ทดสอบ GET/POST/PUT/DELETE

โครงสร้างโฟลเดอร์โปรเจกต์

📥 Import Postman Collection

เปิด Postman → Import → เลือกไฟล์ Lab10-WebAPI.postman_collection.json

จะได้ request ครบทั้ง 5 แบบ (GET all, GET by id, POST, PUT, DELETE)

📂 Project Structure
Lab10-WebAPI-Node/
├─ database.sql
├─ Lab10-WebAPI.postman_collection.json
├─ .env.example
├─ package.json
├─ server.js
├─ db.js
└─ README.md

📄 .gitignore
node_modules
.env

🚀 Deploy to GitHub
git init
git add .
git commit -m "Lab10 WebAPI (Node + MySQL) - fighter jet products"
git branch -M main
git remote add origin https://github.com/<your-username>/Lab10-WebAPI-Node.git
git push -u origin main

