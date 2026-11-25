<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Student Dashboard</title>

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

    .dashboard {
        width: 90%;
        max-width: 700px;
        background: white;
        padding: 45px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    h1 {
        margin-bottom: 10px;
        color: #333;
        font-size: 32px;
    }

    .subtitle {
        color: #777;
        margin-bottom: 35px;
        font-size: 16px;
    }

    .menu {
        display: flex;
        justify-content: center;
        gap: 20px;
        flex-wrap: wrap;
    }

    .card {
        width: 240px;
        padding: 25px 20px;
        border-radius: 12px;
        background-color: #f7f8fc;
        border: 1px solid #e5e5e5;
        transition: 0.3s;
    }

    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.12);
    }

    .card h2 {
        font-size: 20px;
        color: #333;
        margin-bottom: 20px;
    }

    .btn {
        display: inline-block;
        padding: 12px 22px;
        background-color: #667eea;
        color: white;
        text-decoration: none;
        border-radius: 7px;
        font-size: 15px;
        font-weight: bold;
        transition: 0.3s;
    }

    .btn:hover {
        background-color: #5568d8;
    }

</style>

</head>

<body>

<div class="dashboard">

    <h1>Welcome to Student Dashboard</h1>

    <p class="subtitle">
        Manage your Student information easily
    </p>

    <div class="menu">

        <div class="card">

            <h2>Add Student</h2>

            <a href="add.jsp" class="btn">
                ADD STUDENT
            </a>

        </div>


        <div class="card">

            <h2>View Students</h2>

            <a href="display-all" class="btn">
                DISPLAY ALL
            </a>

        </div>

    </div>

</div>

</body>

</html>