<%@page import="com.ex.lms.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book List</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #151515 ;
        color: #333;
        margin: 0;
        padding: 0;
    }
    table {
        width: 90%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #EEEEEE;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        padding: 12px;
        border: 1px solid #ddd;
        text-align: left;
    }
    th {
        background-color: #C73659;
        color: #EEEEEE;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    a {
        text-decoration: none;
        color: #C73659;
        font-weight: bold;
        /* transition: color 0.3s ease; */ 
    }
    a:hover {
        text-decoration: underline;
      /*   color: A91D3A; */
            
 }
    .no-books {
        text-align: center;
        padding: 20px;
        color: #A91D3A;
    }
</style>
</head>
<body>
    <h1 style="text-align: center; color: #C73659;">Book List</h1>
    <%
    List<Book> books = (List<Book>) request.getAttribute("books");
    %>

    <table>
        <tr>
            <th>Book Id</th>
            <th>Book Name</th>
            <th>Book Author</th>
            <th>Book Price</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        
        <%
        if (books != null && !books.isEmpty()) {
            for (Book book : books) {
        %>
        <tr>
            <td><%= book.getBookId() %></td>
            <td><%= book.getBookName() %></td>
            <td><%= book.getBookAuthor() %></td>
            <td><%= book.getBookPrice() %></td>
            <td><a href="update-book-view?bookId=<%= book.getBookId() %>">Edit</a></td>
            <td><a href="delete-book?bookId=<%= book.getBookId() %>">Delete</a></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="6" class="no-books">No books available</td>
        </tr>
        <%
        }
        %>
    </table>

</body>
</html>
