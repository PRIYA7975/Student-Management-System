<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Add Student</title>

<style>

    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        min-height: 100vh;

        display: flex;
        justify-content: center;
        align-items: center;
    }

    .form-container {
        width: 90%;
        max-width: 500px;
        background: white;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 30px;
    }

    .form-group {
        margin-bottom: 18px;
    }

    label {
        display: block;
        margin-bottom: 7px;
        color: #444;
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="number"] {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 7px;
        font-size: 15px;
        outline: none;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="number"]:focus {
        border-color: #667eea;
        box-shadow: 0 0 5px rgba(102, 126, 234, 0.3);
    }

    input[type="submit"] {
        width: 100%;
        padding: 13px;
        margin-top: 10px;
        border: none;
        border-radius: 7px;
        background-color: #667eea;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #5568d8;
    }

    .back {
        display: block;
        text-align: center;
        margin-top: 20px;
        color: #667eea;
        text-decoration: none;
        font-weight: bold;
    }

    .back:hover {
        text-decoration: underline;
    }

</style>

</head>

<body>

<div class="form-container">

    <h1>Enter Student Details</h1>

    <form action="save-student"
          method="post">

        <div class="form-group">
            <label>Student Name</label>
            <input type="text"
                   placeholder="Enter Name"
                   name="name"
                   required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email"
                   placeholder="Enter Email"
                   name="email"
                   required>
        </div>

        <div class="form-group">
            <label>Age</label>
            <input type="number"
                   placeholder="Enter Age"
                   name="age"
                   required>
        </div>

        <div class="form-group">
            <label>Marks</label>
            <input type="number"
                   placeholder="Enter Marks"
                   name="marks"
                   required>
        </div>

        <input type="submit" value="ADD STUDENT">

    </form>

    <a href="index.jsp"
       class="back">
        ← Back to Dashboard
    </a>

</div>

</body>

</html>