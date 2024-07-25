<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management System</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #0C0C0C;
	color: #333;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	height: 100vh;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px;
	background-color: #151515;
	width: 100%;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #EEEEEE;
	margin: 0;
}

a {
	text-decoration: none;
	background-color: #C73659;
	color: #EEEEEE;
	border: none;
	border-radius: 5px;
	padding: 12px 24px;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s, transform 0.2s;
}

a:hover {
	background-color: #A91D3A;
	transform: translateY(-2px);
	text-decoration: underline;
}

.main-content {
	display: flex;
	justify-content: center;
	align-items: center;
	flex: 1;
	text-align: center;
}
</style>
</head>
<body>
	<div class="header">
		<h1>Library Management System</h1>
		<a href="home-page">Home</a>
	</div>
</body>
</html>
