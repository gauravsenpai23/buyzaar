<%--
  Created by IntelliJ IDEA.
  User: GAURAV
  Date: 8/14/2025
  Time: 7:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="entities.User" %>

<%
    User user = (User) session.getAttribute("current-user");
    if (user == null) {
        session.setAttribute("message", "You are not logged in !! Login first");
        response.sendRedirect("login.jsp");
    } else {
        if (user.getUserType().equals("admin")) {
            session.setAttribute("message", "You are not Normal User !! Do not access this page");

            response.sendRedirect("login.jsp");
        }
    }

%>