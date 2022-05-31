<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 String DRIVER_MYSQL = "com.mysql.jdbc.Driver";
 String LOCAL_SERVIDOR = "localhost";
 String BANCO_DE_DADOS = "recicler";
 String PORTA_BANCO = "3306";
 String USUARIO = "root";
 String SENHA = "";
 
 try {
     Class.forName(DRIVER_MYSQL).newInstance();
     String url = "jdbc:mysql://" + LOCAL_SERVIDOR + ":" + PORTA_BANCO + "/" + BANCO_DE_DADOS;
     Connection conn = (Connection) DriverManager.getConnection(url, USUARIO, SENHA);
     out.println("Conexão efetuada");
     conn.close();
     System.out.println("Conexão encerrada");
 } catch (Exception e) {
     out.println(e.getMessage());
 }
%>
</body>
</html>