<%-- 
    Document   : calculator
    Created on : Jan 27, 2016, 6:46:15 PM
    Author     : tliebl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Page</title>
    </head>
    <body>
        <form id="recForm" name="recForm" action="CalcController" method="POST">
            <input type="text" name="length" placeholder="length" value="">
            <input type="text" name="width" placeholder="width" value="">
            <input type="submit" name="submit" value="Calculate">
        </form>
    </body>
</html>
