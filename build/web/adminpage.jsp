<%-- 
    Document   : adminpage
    Created on : Jan 15, 2021, 1:28:51 PM
    Author     : arnab
--%>

<%@page import="com.uams.Applicant"%> 
<%@page import="java.util.ArrayList"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Admin </title> 
</head> 
<body> 
	<h1 align="center">Displaying Applicant List</h1> 
	<table border ="1" width="500" align="center"> 
		<tr bgcolor="00FF7F"> 
		<th><b>Registration No</b></th> 
		<th><b>Name</b></th> 
        <th><b>HSC Roll</b></th>
        <th><b>GPA</b></th>
        <th><b>Email</b></th>
        <th><b>Payment Status</b></th> 
		</tr> 
		 
		<%ArrayList<Applicant> app = 
			(ArrayList<Applicant>)request.getSession().getAttribute("data"); 
		for(Applicant s:app){%> 
		<%-- Arranging data in tabular form 
		--%> 
			<tr> 
				<td><%=s.getRegno()%></td> 
				<td><%=s.getName()%></td> 
                                <td><%=s.getRoll()%></td> 
                                <td><%=s.getGPA() %></td>
                                <td><%=s.getEmail() %></td>
                                <td><%=s.getPayment() %></td>
			</tr> 
			<%}%> 
		</table> 
		<hr/> 
	</body> 
</html> 

