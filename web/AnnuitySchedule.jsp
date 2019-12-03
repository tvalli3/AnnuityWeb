<%-- 
    Document   : AnnuitySchedule
    Created on : Sep 25, 2019, 9:36:58 PM
    Author     : Tom Valli
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Annuity Schedule</title>
        <style>
            body {
                font-family: Consolas, "Lucida Console", "Courier New", monospace;
            }
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th {  
                background-color: #D8D8D8;
            }
        </style>
    </head>
    <body>
        <h1>Annuity Schedule</h1>
        <table border="1">
            <tr>
                <th>Month</th>
                <th>Beg.Bal.</th>
                <th>Deposit@Beg.</th>
                <th>Int.Earned</th>
                <th>Deposit@End</th>
                <th>End.Bal.</th>
            </tr>
            <c:forEach var="annmo" items="${annuity.months}">
                <tr>
                    <td align="right">${annmo.month}</td>
                    <td align="right">
            <fmt:formatNumber value="${annmo.bbal}" type="currency"/></td>
                    <td align="right">
            <fmt:formatNumber value="${annmo.deposit}" type="currency"/></td>
                    <td align="right">
            <fmt:formatNumber value="${annmo.intearn}" type="currency"/></td>
                    <td align="right">
            <fmt:formatNumber value="${annmo.depositEnd}" type="currency"/></td>
                    <td align="right">
            <fmt:formatNumber value="${annmo.ebal}" type="currency"/></td>
                </tr>
            </c:forEach>
            
        </table>       
        <br>        
        
        <form action="NewAnnuity" method="post">
            <input type="submit" value="New Annuity"/>
        </form>
    </body>
</html>
