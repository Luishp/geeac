<%-- 
    Document   : index
    Created on : 09-jun-2017, 21:21:24
    Author     : luish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String context_path = request.getContextPath().toString();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>SISTEMA DE GESTION DE EQUIPO ELECTRICO DE ALTO CONSUMO</h1>

        <h2><a href="login"></a></h2>
        <form action='<%=context_path %>/login' method='post'>
            <label>Usuario</label>
            <input type='text' name='usuario' value="${user.usuario}" />
            <br>
            <label>Contraseña</label>
            <input type='password' name='passwd' value="${user.passwd}" />
            <br>
            <button type="submit" >Aceptar</button>
        </form>
    </body>
</html>
