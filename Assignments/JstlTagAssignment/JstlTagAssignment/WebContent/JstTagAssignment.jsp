<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- set and out -->

<c:set var="Employee1_Salary"  value="${20000}"/>  
<p>Employee1_Salary is: <c:out value="${Employee1_Salary}"/> </p>
<br><br>

<c:set var="Employee2_Salary"  value="${14000}"/>  
<p>Employee2_Salary is: <c:out value="${Employee2_Salary}"/> </p>
<br><br>

<c:set var="Employee3_Salary"  value="${25000}"/>  
<p>Employee3_Salary is: <c:out value="${Employee3_Salary}"/> </p>
<br><br>

<c:set var="Employee4_Salary"  value="${10000}"/>  
<p>Employee5_Salary is: <c:out value="${Employee4_Salary}"/> </p>
<br><br>



<!-- If condition -->

 
<c:if test="${(Employee1_Salary >= 9000 && Employee1_Salary <= 13000)}"> 
   <c:set var="Employee1_New_Salary" value="${Employee1_Salary+5000}" />
   <p>Employee1_Salary New Salary is : <c:out value="${Employee1_New_Salary}"/><p>  
</c:if>  

<c:if test="${(Employee1_Salary >= 13500 && Employee1_Salary <= 21000)}"> 
   <c:set var="Employee1_New_Salary" value="${Employee1_Salary+7000}" />
   <p>Employee1_Salary New Salary is : <c:out value="${Employee1_New_Salary}"/><p>  
</c:if>  

<c:if test="${(Employee1_Salary >= 22000 && Employee1_Salary <= 26000)}"> 
   <c:set var="Employee1_New_Salary" value="${Employee1_Salary+9000}" />
   <p>Employee1_Salary New Salary is : <c:out value="${Employee1_New_Salary}"/><p>  
</c:if>  

<c:if test="${Employee1_Salary > 28000}"> 
   <c:set var="Employee1_New_Salary" value="${Employee1_Salary+10000}" />
   <p>Employee1_Salary New Salary is : <c:out value="${Employee1_New_Salary}"/><p>  
</c:if>  

<c:if test="${(Employee2_Salary >= 9000 && Employee2_Salary <= 13000)}"> 
   <c:set var="Employee2_New_Salary" value="${Employee2_Salary+5000}" />
   <p>Employee2_Salary New Salary is : <c:out value="${Employee2_New_Salary}"/><p>  
</c:if>  

<c:if test="${(Employee2_Salary >= 13500 && Employee2_Salary <= 21000)}"> 
   <c:set var="Employee2_New_Salary" value="${Employee2_Salary+7000}" />
   <p>Employee2_Salary New Salary is : <c:out value="${Employee2_New_Salary}"/><p>  
</c:if>  

<c:if test="${(Employee2_Salary >= 22000 && Employee2_Salary <= 26000)}"> 
   <c:set var="Employee2_New_Salary" value="${Employee2_Salary+9000}" />
   <p>Employee2_Salary New Salary is : <c:out value="${Employee2_New_Salary}"/><p>  
</c:if>  

<c:if test="${Employee2_Salary > 28000}"> 
   <c:set var="Employee2_New_Salary" value="${Employee2_Salary+10000}" />
   <p>Employee2_Salary New Salary is : <c:out value="${Employee2_New_Salary}"/><p>  
</c:if>  


<c:if test="${(Employee3_Salary >= 9000 && Employee3_Salary <= 13000)}"> 
   <c:set var="Employee3_New_Salary" value="${Employee3_Salary+5000}" />
   <p>Employee3_Salary New Salary is : <c:out value="${Employee3_New_Salary}"/><p>  
</c:if>  

<c:if test="${(Employee3_Salary >= 13500 && Employee3_Salary <= 21000)}"> 
   <c:set var="Employee3_New_Salary" value="${Employee3_Salary+7000}" />
   <p>Employee3_Salary New Salary is : <c:out value="${Employee3_New_Salary}"/><p>  
</c:if>  

<c:if test="${(Employee3_Salary >= 22000 && Employee3_Salary <= 26000)}"> 
   <c:set var="Employee3_New_Salary" value="${Employee3_Salary+9000}" />
   <p>Employee3_Salary New Salary is : <c:out value="${Employee3_New_Salary}"/><p>  
</c:if>  

<c:if test="${Employee3_Salary > 28000}"> 
   <c:set var="Employee3_New_Salary" value="${Employee3_Salary+10000}" />
   <p>Employee3_Salary New Salary is : <c:out value="${Employee3_New_Salary}"/><p>  
</c:if>  


<c:if test="${(Employee4_Salary >= 9000 && Employee4_Salary <= 13000)}"> 
   <c:set var="Employee4_New_Salary" value="${Employee4_Salary+5000}" />
   <p>Employee4_Salary New Salary is : <c:out value="${Employee4_New_Salary}"/><p>  
</c:if>  

<c:if test="${(Employee4_Salary >= 13500 && Employee4_Salary <= 21000)}"> 
   <c:set var="Employee4_New_Salary" value="${Employee4_Salary+7000}" />
   <p>Employee4_Salary New Salary is : <c:out value="${Employee4_New_Salary}"/><p>  
</c:if>  

<c:if test="${(Employee4_Salary >= 22000 && Employee4_Salary <= 26000)}"> 
   <c:set var="Employee4_New_Salary" value="${Employee4_Salary+9000}" />
   <p>Employee4_Salary New Salary is : <c:out value="${Employee4_New_Salary}"/><p>  
</c:if>  

<c:if test="${Employee4_Salary > 28000}"> 
   <c:set var="Employee4_New_Salary" value="${Employee4_Salary+10000}" />
   <p>Employee4_Salary New Salary is : <c:out value="${Employee4_New_Salary}"/><p>  
</c:if>  

<br><br>
<c:remove var="Employee1_Salary"/>
<p>After remove Employee1_Salary: <c:out value="${Employee1_Salary}" /></p>

<c:remove var="Employee2_Salary"/>
<p>After remove Employee2_Salary: <c:out value="${Employee2_Salary}"/></p>

<c:remove var="Employee3_Salary"/>
<p>After remove Employee3_Salary: <c:out value="${Employee3_Salary}"/></p>

<c:remove var="Employee4_Salary"/>
<p>After remove Employee4_Salary: <c:out value="${Employee4_Salary}"/></p>


</body>
</html>