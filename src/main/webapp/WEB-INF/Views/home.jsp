<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%--    <%@ include file="NavBar.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    body {
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
       /*  background: url('/Library_Management_System_Spring_MVC/src/main/webapp/WEB-INF/Images/librarymanagementsystem11-230531064236-e7edb171-thumbnail.webp') no-repeat center center fixed; */
        background-size: cover;
        color: #131842;
    }
    .container {
        display: flex;
        min-height: 100vh;
       /*  background-color:#151515; */ 
    }
    .sidebar {
        width: 230px;
        background: #151515 ;
        padding: 20px;
        color: #fff;
        display: flex;
        flex-direction: column;
        align-items: center;
        position: fixed; /* Fixed positioning to keep it in place */
        height: 100%;
    }
    
    .sidebar h2 {
        margin-top: 0;
    }
    .sidebar a {
        color: #fff;
        text-decoration: none;
        margin: 15px 0;
        font-size: 1.1em;
        font-weight: bold;
        display: block;
        text-align: center;
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
    }
    .sidebar a:hover {
        background-color: #555;
        color: #f0f0f0;
    }
    .main-content {
        margin-left: 250px; /* Match the width of the sidebar */
        padding: 20px;
        background: #EEEEEE;
        flex: 1;
    }
    h1 {
        text-align: center;
        color: #1e2a38;
        margin-top: 20px;
        font-size: 2.5em;
    }
    p {
        text-align: center;
        font-size: 1.1em;
    }
    a.button {
        display: inline-block;
        margin: 15px;
        padding: 12px 24px;
        color: #EEEEEE;
        background-color: #C73659;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
        font-size: 1.1em;
        transition: background-color 0.3s, transform 0.2s;
    }
    a.button:hover {
        background-color: #A91D3A;
        transform: translateY(-2px);
    }
</style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <h2>Library Menu</h2>
            <a href="add-book-view" class="button">Add Book</a>
            <a href="find-all-books" class="button">Manage Books</a>
        </div>
        <div class="main-content">
            <h1>Welcome to the Library Management System</h1>
            <p>Manage your books efficiently with our system. Use the sidebar to navigate to different sections.</p>
        </div>
    </div>
</body>
</html>
