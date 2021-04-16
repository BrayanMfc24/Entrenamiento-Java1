<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
	int n1=0, n2=0, n3=0, sum=0, prom=0;
	if(request.getParameter("ok") !=null){
		n1= Integer.parseInt(request.getParameter("text1"));
		n2= Integer.parseInt(request.getParameter("text2"));
		n3= Integer.parseInt(request.getParameter("text3"));
		sum = n1+n2+n3;
		prom=sum/3;
	} 
%>

<h1> Plan de entrenamiento.</h1>

<h3>promedio y suma de notas. </h3>
<form>
	<table>
		<tr>
			<td>Ingrese primera nota</td>
			<td> <input type="text" name="text1" > </td>
		</tr>
		<tr>
			<td>Ingrese segunda nota</td>
			<td> <input type="text" name="text2" > </td>
		</tr>
		<tr>
			<td>Ingrese tercera nota</td>
			<td> <input type="text" name="text3" > </td>
		</tr>
		
		<tr>
			<td></td>
			<td> <input type="submit" value="enviar" name="ok" > </td>
		</tr>
		
		<tr>
			<td>Suma:</td>
			<td> <input type="text" name="text4" value= <% out.print(sum); %>  > </td>
		</tr>
		<tr>
			<td>promedio:</td>
			<td> <input type="text" name="text5" value= <% out.print(prom); %> > </td>
		</tr>	
	</table>
</form>










</body>
</html>