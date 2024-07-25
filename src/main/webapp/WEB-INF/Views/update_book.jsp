<%@page import="com.ex.lms.entity.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="NavBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #151515 ;
        color: #333;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-container {
        background-color: #EEEEEE;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }
    h1 {
        color: #A91D3A;
    }
    input[type="text"], input[type="number"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #C73659;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #A91D3A;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h1>Update Book</h1>
        <%
        Book book = (Book)request.getAttribute("book");
        %>
        <form action="update-book" method="post">
            <input type="text" value="<%=book.getBookId()%>" placeholder="Enter Book Id" name="bookId" readonly="readonly">
            <input type="text" value="<%=book.getBookName()%>" placeholder="Enter Book Name" name="bookName" pattern="[a-zA-Z\s]+" title="Book Name should contain only letters." required>
            <input type="text" value="<%=book.getBookAuthor()%>" placeholder="Enter Book Author" name="bookAuthor" pattern="[a-zA-Z\s]+" title="Book Author should contain only letters." required>
            <input type="number" value="<%=book.getBookPrice()%>" placeholder="Enter Book Price" name="bookPrice" min="0" step="0.01" title="Book Price should be a valid number (e.g., 10.99)." required>
            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>
