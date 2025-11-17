-- Database initialization script for Exam Management System
-- Run these statements in MySQL (adjust user/password as desired)

CREATE DATABASE IF NOT EXISTS exam;
USE exam;

CREATE TABLE IF NOT EXISTS Students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  srn VARCHAR(50) UNIQUE,
  username VARCHAR(100),
  password VARCHAR(255),
  dept VARCHAR(100),
  sem VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS Teachers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  irn VARCHAR(50) UNIQUE,
  username VARCHAR(100),
  password VARCHAR(255),
  depti VARCHAR(100),
  sub VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Classgroup (
  id INT AUTO_INCREMENT PRIMARY KEY,
  group_name VARCHAR(100),
  instructor_id VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS GroupStudents (
  id INT AUTO_INCREMENT PRIMARY KEY,
  group_id INT,
  student_srn VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Exams (
  id INT AUTO_INCREMENT PRIMARY KEY,
  subject VARCHAR(255),
  type VARCHAR(50),
  date_scheduled DATE,
  duration INT,
  total_marks INT,
  groupname VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS ExamResults (
  id INT AUTO_INCREMENT PRIMARY KEY,
  group_name VARCHAR(100),
  student_srn VARCHAR(50),
  exam_subject VARCHAR(255),
  exam_type VARCHAR(50),
  exam_date DATE,
  marks INT,
  review VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS RegisteredExams (
  id INT AUTO_INCREMENT PRIMARY KEY,
  exam_name VARCHAR(255),
  exam_date DATE,
  student_srn VARCHAR(50)
);

-- Optional: create a dedicated user (run as a privileged MySQL user)
-- Replace 'exam_user' and 'exam_pass' with secure values before running
-- CREATE USER 'exam_user'@'localhost' IDENTIFIED BY 'exam_pass';
-- GRANT ALL PRIVILEGES ON exam.* TO 'exam_user'@'localhost';
-- FLUSH PRIVILEGES;
