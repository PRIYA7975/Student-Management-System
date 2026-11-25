<%@page import="mvc.sms.model.Student"%>
<%@ page import="java.util.List" %>

<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Student List</title>

    <style>
        body {
            margin: 0;
            padding: 40px;
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
        }

        .container {
            width: 90%;
            max-width: 1000px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #2c3e50;
            color: white;
            padding: 14px;
            text-align: center;
        }

        td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        tr:hover {
            background-color: #eaf2f8;
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

<div class="container">

    <h1>Student List</h1>

    <%
        List<Student> slist =
            (List<Student>) request.getAttribute("studentList");
    %>

    <table>

        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Student Email</th>
            <th>Student Age</th>
            <th>Student Marks</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>

        <% for(Student s : slist) { %>

        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getAge() %></td>
            <td><%= s.getMarks() %></td>
            
            <td><a href="find-by-Id?studentId=<%= s.getId() %>">UPDATE</a></td>
            <td><a href="delete-by-Id?studentId=<%= s.getId() %>">DELETE</a></td>
        </tr>

        <% } %>

    </table>
    <a href="index.jsp"
       class="back">
        ← Back to Dashboard
    </a>

</div>

</body>
</html>