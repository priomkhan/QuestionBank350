<%@ page import="java.sql.Connection"%>
<%@ page import="QuestionBank.DbManager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to CMPT-350 Question Bank Project</title>
</head>
<body>

<h1><% out.println("Welcome to Azure Project Question Bank 350!"); %></h1>

<p><%  
	DbManager newDbManager = new DbManager();
	Connection dbConnection = newDbManager.getConnection();
	if(dbConnection == null){
		out.println("Database Not Coonected");
		
	}else{
		out.println("Database Coonection OK");
		
	}

%></p>

</body>
</html>