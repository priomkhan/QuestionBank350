<%@ page import="java.sql.Connection"%>
<%@ page import="QuestionBank.DbManager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome to CMPT-350 Question Bank Project</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>

<!-- Header -->
<Header class="Frontpage">
    <div class="container">
        <div class="jumbotron" style="background-color:#6baf56;">
            <h1>Welcome to Azure Project Question Bank 350</h1>
            <h2>Online Examination System</h2>
        </div>
    </div>
</Header>


<div class="container">
    <button type="button" class="btn btn-warning btn-block">Professor</button>
    <button type="button" class="btn btn-danger btn-block">Admin</button>
</div>


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