<%--
  Created by IntelliJ IDEA.
  User: GAURAV
  Date: 7/13/2025
  Time: 1:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Login - Buyzaar</title>
    <%@include file="components/common_css_js.jsp"%>
    <style>
        body {
            background: #f5f7fa;
            font-family: 'Segoe UI', sans-serif;
        }
        .login-card {
            max-width: 400px;
            margin: auto;
            margin-top: 100px;
            padding: 2rem;
            border-radius: 16px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            background-color: white;
        }
        .btn {
            border-radius: 6px;
        }
    </style>
</head>
<body>
<%@include file="components/navbar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4 login-card">
            <div class="card mt-3 ">
                <div class="card-header text-white dark custom-bg">
                    <h3>Login Here</h3>
                </div>
                <div class="card-body">
                    <form action="login" method="post">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" id="password" placeholder="Enter password" required>
                        </div>
                        <a href="register.jsp" class="text-center d-block mb-2">if not registered click here</a>
                        <div class="d-grid gap-2 text-center">
                            <button type="submit" class="btn btn-primary custom-bg">Login</button>
                            <button type="reset" class="btn btn-primary custom-bg">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
