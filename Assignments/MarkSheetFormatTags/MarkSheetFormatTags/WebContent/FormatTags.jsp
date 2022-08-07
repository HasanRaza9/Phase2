<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="totalMarks" value="100"/>
<p align="center">MarkSheet</p>
<c:set var="Date" value="<%=new java.util.Date()%>" />  
<p align="right">
 <fmt:formatDate type="both" value="${Date}" />  
</p>
<c:set var="marks1" value="85"/>
<fmt:parseNumber var="j" type="number" value = "${marks1}"/>
<p><i>marks 1:  </i><c:out value="${j}" />
<i>Total marks: </i> <c:out value = "${totalMarks}"/></p>

<c:set var="marks2" value="90"/>
<fmt:parseNumber var="j" type="number" value = "${marks2}"/>
<p><i>marks 2:  </i><c:out value="${j}" />
<i>Total marks: </i> <c:out value = "${totalMarks}"/></p>


<c:set var="marks3" value="75"/>
<fmt:parseNumber var="j" type="number" value = "${marks3}"/>
<p><i>marks 3:  </i><c:out value="${j}" />
<i>Total marks: </i> <c:out value = "${totalMarks}"/></p>


<c:set var="marks4" value="95"/>
<fmt:parseNumber var="j" type="number" value = "${marks4}"/>
<p><i>marks 4:  </i><c:out value="${j}" />
<i>Total marks: </i> <c:out value = "${totalMarks}"/></p>

<c:set var="marks5" value="65"/>
<fmt:parseNumber var="j" type="number" value = "${marks5}"/>
<p><i>marks 5:  </i><c:out value="${j}" />
<i>Total marks: </i> <c:out value = "${totalMarks}"/></p>

<br>
<c:set var="TotalObtainedMarks" value="${marks1+marks2+marks3+marks4+marks5}"/>
<p><i>Total Marks: </i><c:out value="${TotalObtainedMarks}"/></p>
<p><i>Percentage: </i><c:out value="${(TotalObtainedMarks/500)*100}"/></p>


<c:set var="Semester1Fee" value="25000"/>
<fmt:parseNumber var="j" type="number" value = "${Semester1Fee}"/>
<p><i>Semester 1 Fee Paid:  </i><c:out value="${j}" />


<c:set var="Semester2Fee" value="20000"/>
<fmt:parseNumber var="j" type="number" value = "${Semester2Fee}"/>
<p><i>Semester 1 Fee Paid:  </i><c:out value="${j}" />

<c:set var="Semester3Fee" value="30000"/>
<fmt:parseNumber var="j" type="number" value = "${Semester3Fee}"/>
<p><i>Semester 1 Fee Paid:  </i><c:out value="${j}" />

<c:set var="Semester4Fee" value="40000"/>
<fmt:parseNumber var="j" type="number" value = "${Semester4Fee}"/>
<p><i>Semester 1 Fee Paid:  </i><c:out value="${j}" />

<br>
<c:set var="TotalFeePaid" value="${Semester1Fee+Semester2Fee+Semester3Fee+Semester4Fee}"/>
<p><i>Total Fee Paid: </i><c:out value="${TotalFeePaid}"/></p>

</body>
</html>