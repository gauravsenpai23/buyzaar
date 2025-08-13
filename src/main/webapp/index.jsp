<%@ page import="helper.FactoryProvider" %>
<html>
<head>
    <%@include file="components/common_css_js.jsp"%>
</head>
<body>
    <%@include file="components/navbar.jsp"%>
    <h2>Hello World!</h2>
    <h1>creating session factory object</h1>
    <%

        out.println(FactoryProvider.getFactory());
    %>
</body>
</html>