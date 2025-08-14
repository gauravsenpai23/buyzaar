<%--
  Created by IntelliJ IDEA.
  User: GAURAV
  Date: 7/12/2025
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/register.css">
    <%@include file="components/common_css_js.jsp" %>
    <title>New User</title>
</head>
<body>
<%@include file="components/navbar.jsp" %>
<div class="container-fluid my-5">
    <%@include file="components/message.jsp" %>
    <div class="row mt-5">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="text-center mb-3">
                        <img src="img/registration.png" alt="icon" class="icon-size">
                    </div>
                    <h3 class="text-center my-3 px-5">Sign Up Here</h3>
                    <form action="register" method="post">
                        <div class="form-group">
                            <label for="name">User Name</label>
                            <input name="user_name" type="text" class="form-control" id="name" placeholder="Enter here"
                                   aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input name="user_email" type="email" class="form-control" id="email"
                                   placeholder="Enter Here" aria-describedby="emailHelp">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                                else.</small>
                        </div>
                        <div class="form-group">
                            <label for="password">User Password</label>
                            <input name="user_password" type="password" class="form-control" id="password"
                                   placeholder="Enter Here" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="phone">User Phone</label>
                            <input name="user_phone" type="number" class="form-control" id="phone"
                                   placeholder="Enter Here" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="text">User Address</label>
                            <textarea name="user_address" class="form-control" id="text"
                                      placeholder="Enter your address" rows="3"></textarea>
                        </div>
                        <div class="container text-center">
                            <button type="submit" class="btn btn-outline-success">Register</button>
                            <button type="reset" class="btn btn-outline-warning">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
