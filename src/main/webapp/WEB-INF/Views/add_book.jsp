<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="NavBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>
<style>
    body {
        font-family: 'Roboto', sans-serif;
        /* background: url('your-background-image.jpg') no-repeat center center fixed; */
        background-size: cover;
        color: #333;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #151515 ;
    }
    .form-container {
        background: #EEEEEE ;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 12px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 400px;
        text-align: center;
    }
    h1 {
        color: #A91D3A;
        margin-bottom: 20px;
    }
    input[type="text"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="text"]::placeholder {
        color: #999;
    }
    input[type="submit"] {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 6px;
        background-color: #C73659;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.2s;
    }
    input[type="submit"]:hover {
        background-color: #A91D3A;
        transform: translateY(-2px);
    }
</style>
</head>
<body>
    <div class="form-container">
        <h1>Add Book</h1>
        <form action="add-book" method="post">
            <input type="text" placeholder="Enter Book Name" name="bookName" pattern="[a-zA-Z\s]+" title="Book Name should contain only letters." required>
            <input type="text" placeholder="Enter Book Author" name="bookAuthor" pattern="[a-zA-Z\s]+" title="Book Author should contain only letters." required>
            <input type="text" placeholder="Enter Book Price" name="bookPrice" pattern="\d+(\.\d{1,2})?" title="Book Price should be a valid number (e.g., 10.99)." required>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
