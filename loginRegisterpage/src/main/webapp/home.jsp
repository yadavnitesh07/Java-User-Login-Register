<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.entites.User" %>  

<%
    User user = (User) session.getAttribute("user-ob");
    if (user == null) {
        session.setAttribute("login-msg", "Please login first");
        response.sendRedirect("login.jsp");
        return; // stop further JSP execution
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    crossorigin="anonymous">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body
    style="background-image: linear-gradient(to right top, #200537, #283169, #215e9a, #088dc6, #12beeb); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

    <!-- navbar start  -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-custom">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
            </ul>
        </div>
    </nav>
    <!--  navbar end  -->

    <!-- login card -->
    <div class="container">
        <div class="row d-flex justify-content-center align-items-center mt-4"> 
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h1>Name: <%= user.getName() %></h1>
                        <h1>Email: <%= user.getEmail() %></h1>
                        <div class="container text-center">
                            <a href="logoutServlet" class="btn btn-primary btn-lg text-white">Logout</a>
                        </div>
                    </div>
                </div>    
            </div>
        </div>
    </div>

</body>
</html>

