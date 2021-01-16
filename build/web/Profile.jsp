<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>
		<H1>Profile</H1>
		<table>
			<tr>
                            <td>Full Name:</td>
                            <td> <% out.println(request.getSession().getAttribute("name")); %></td>
			</tr>
			<tr>
                            <td>Registration No:</td>
                            <td><% out.println(request.getSession().getAttribute("reg")); %></td>
                        </tr>
                        <tr>
                            <td>HSC Roll : </td>
                            <td><% out.println(request.getSession().getAttribute("roll")); %></td>
                        </tr>
                        <tr>
                            <td>HSC GPA : </td>
                            <td><% out.println(request.getSession().getAttribute("gpa")); %></td>
                        </tr>
			<tr>
                            <td>Email:</td>
                            <td><% out.println(request.getSession().getAttribute("email")); %></td>
                        </tr>
		</table>
                
                <h5>Payment Status :</h5> 
                <% 
                    String payment =(String)request.getSession().getAttribute("payment");
                    request.getSession().setAttribute("name",request.getSession().getAttribute("name"));
                    request.getSession().setAttribute("reg",request.getSession().getAttribute("reg"));
                    if( payment.equals("PAID")){
                         out.println("PAID");
                     } 
                     else{
                         out.println("DUE");
                         out.print("<a href='payment.jsp'>Pay Now</a>");
                     }
                %>
                
                <h5> Download Admit Card :</h5>
                <%
                    if( payment.equals("PAID")){
                         out.println("Your Admit Card is Ready");
                         String reg = (String)request.getSession().getAttribute("reg");
                         String filename = "AdmitCards/" + reg +".pdf";
                         out.print("<a href='"+filename+"'>Download Now</a>");
                     } 
                     else{
                         out.println("Pay First");
                     }
                %>
                <br>
                <br>
                <br>
                <a href="index.jsp">Log Out</a>
                
</body>
</html>