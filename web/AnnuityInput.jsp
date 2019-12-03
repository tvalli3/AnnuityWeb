<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Annuity</title>
        <style>
            body {
                font-family: Consolas, "Lucida Console", "Courier New", monospace;
            }
        </style>
    </head>
    <body>
        <h1>Annuity Calculator</h1>
        <form action="AnnuityCalc" name="adata" id="adata" method="post">
        <table>
            <tr>
                <td>
                    Deposit at Beginning of Month:
                </td>
                <td>
                    <input type="text" name="amt1" id="amt1" value="${annuity.deposit}"/>
                </td>
            </tr>
            <tr>
                <td>
                    Deposit at End of Month:
                </td>
                <td>
                    <input type="text" name="amt2" id="amt2" value="${annuity.depositEnd}"/> 
                </td>
            </tr>
            <tr>
                <td>
                    Annual Interest Rate:
                </td>
                <td>
                    <input type="text" name="irt" id="irt" value="${annuity.rate}"/>
                </td>
            </tr>
            <tr>
                <td>
                    Term(in mos):
                </td>
                <td>
                    <input type="text" name="term" id="term" value="${annuity.term}"/>
                </td>
            </tr>
        </table>
        <input type="submit" value="Calculate"/>
        </form>
        
            <br>
            ${msg}
    </body>
</html>