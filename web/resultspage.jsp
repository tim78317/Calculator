<%-- 
    Document   : resultspage
    Created on : Jan 27, 2016, 6:57:33 PM
    Author     : tliebl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(request.getAttribute("area") != null){
                
                %>
                <h1>The area of the Rectangle is <%=request.getAttribute("area").toString()%></h1>
               <% 
            }

        %>
      
    </body>
</html>
