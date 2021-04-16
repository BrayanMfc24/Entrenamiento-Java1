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
	int num1=0, num2=0, sumar=0, dividir=0, multiplicar=0;
 	if(request.getParameter("res") !=null){
		num1= Integer.parseInt(request.getParameter("num1"));
		num2= Integer.parseInt(request.getParameter("num2"));
		sumar = num1+num2;
		}
 	if(request.getParameter("div") !=null){
 		num1= Integer.parseInt(request.getParameter("num1"));
		num2= Integer.parseInt(request.getParameter("num2"));
 		dividir = num1/num2;
 		}
 	if(request.getParameter("mul") !=null){
 		num1= Integer.parseInt(request.getParameter("num1"));
		num2= Integer.parseInt(request.getParameter("num2"));
 		multiplicar = num1*num2;
 		}
%>
<h2>Calculadora</h2>
<form action="">
	<label>Primer número</label> 
	<input type="text" name="num1" ><br>
	<label>Segundo número</label> 
	<input type="text" name="num2" ><br>
	
	<input type="submit" value="Sumar" name="res" >
	<input type="submit" value="Dividir" name="div" >
	<input type="submit" value="Multiplicar" name="mul" ><br>
	<label>La suma es:</label>
	<input type="text"  value=<% out.print( sumar ); %>><br>
	<label>La divicion es:</label>
	<input type="text"  value=<% out.print( dividir ); %>><br>
	<label>La multiplicación es:</label>
	<input type="text"  value=<% out.print( multiplicar ); %>>
</form>
</body>
</html>