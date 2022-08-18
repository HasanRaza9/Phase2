<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Reservation</title>
</head>
<body>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/db_flight_reservation"  
     user="root"  
     password="root"/> 

Total Amount : <%=request.getParameter("totalPrice") %><br>
Total Passenger : <%=request.getParameter("totalpassengers") %><br>
Flight Number : <%=request.getParameter("flightNumber") %><br>
Passenger Email: <%=request.getParameter("PassengerEmail") %><br>


<form Action="PaymentConfirmation" method="post">
Name on Card:		<input type="text" name="PassNameOnCard" required><br>
Entry Card Number:	<input type="text" name="CardNumber"><br>
Entry Card Expiry:	<input type="text" name="ExpiryDate"><br>

<c:out value="${param.PassengerEmail}"></c:out>
<c:out value="${param.flightNumber}"></c:out>

<input type="hidden" value='<%=request.getParameter("PassengerEmail") %>' name="passEmail">
<input type="hidden" value='<%=request.getParameter("flightNumber") %>' name="flightNo">
<input type="hidden" value='<%=request.getParameter("TotalBookedSeats") %>' name="totalSeats">
<input type="hidden" value='<%=request.getParameter("totalBookedSeats") %>' name="bookedSeats">

<input type="submit" value="Confrim">

</form>


</body>
</html>