<%-- 
    Document   : AnnuityResults
    Created on : Sep 24, 2019, 11:45:38 PM
    Author     : Tom Valli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="annuity" scope="session" class="business.Annuity"/>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Annuity Results</title>
        <style>
            body {
                font-family: Consolas, "Lucida Console", "Courier New", monospace;
            }
        </style>
    </head>
    <body>
        <h1>Annuity Results</h1>
        <p>An annuity with a deposit of:
        <fmt:formatNumber value="${annuity.deposit}" type="currency"/>
        at the beginning of<br>
        each month and a deposit of
        <fmt:formatNumber value="${annuity.depositEnd}" type="currency"/>
        at the end of each month<br> and earning 
        <jsp:getProperty name="annuity" property="rate"/>% per year for 
        <jsp:getProperty name="annuity" property="term"/> months <br>
        will have a final value of: 
        <fmt:formatNumber value="${annuity.finalValue}" type="currency"/>
        </p>
        <br>
        <form action="AnnuitySchedule.jsp" method="post">
            <input type="submit" value="Schedule"/>
        </form>
        <br>
        <form action="NewAnnuity" method="post">
            <input type="submit" value="New Annuity"/>
        </form>
    </body>
</html>
