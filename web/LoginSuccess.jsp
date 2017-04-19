<%--
  Created by IntelliJ IDEA.
  User: eikood
  Date: 17.04.2017
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Success Page</title>
</head>
<body>
<%
    String userName = null;
    String sessionID = null;
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("user")) userName = cookie.getValue();
            if (cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
        }
    }
    if(userName == null) response.sendRedirect("login.html");
%>
<h3>Hi <%=userName %>, Login successful.  Your Session ID=<%=sessionID %></h3>
<br>
<form action="LogoutServlet" method="post">
    <input type="submit" value="Logout" >
</form>
</body>
</html>