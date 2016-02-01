<%-- 
    Document   : calculator
    Created on : Jan 27, 2016, 6:46:15 PM
    Author     : tliebl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome</title>    
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Latest compiled and minified CSS -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="navbar-wrapper">
            <div class="container">

                <nav class="navbar navbar-inverse navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="calculator.jsp">Calculator</a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="calculator.jsp">Home</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

            </div>
        </div>
        <%
            if(request.getAttribute("errorDataMessage") != null){
         %>      
                        <div class="container marketing">
         <h4><%=request.getAttribute("errorDataMessage").toString()%></h4>   
                        </div>
            <%
                }else{
                %>
            <div class="container marketing">
            <h1>Area of a Rectangle</h1>
            <%
               if (request.getAttribute("area") == null) {
            %>
            <form id="recForm" name="recForm" action="CalcController" method="POST">
                <input type="text" name="length" placeholder="length" value="">
                <input type="text" name="width" placeholder="width" value="">
                <input type="submit" name="submit" value="Calculate">
            </form>
             <%
                }
            %>
            <% if (request.getAttribute("area") != null) {

            %>
            <form id="recForm" name="recForm" action="CalcController" method="POST">
                <input type="text" name="length" placeholder="length" value="">
                <input type="text" name="width" placeholder="width" value="">
                <input type="submit" name="submit" value="Calculate">
            </form>
            <h1>The area of the Rectangle is <%=request.getAttribute("area").toString()%></h1>
           <%
                }
            %>
            <img src="img/rectangle-27y4nwa.jpg" alt=""/>
        </div>
         
        <br>
        <br>
        <div class="container marketing">
            <h1>Area of a Circle</h1>
            <%
               if (request.getAttribute("areaOfCircle") == null) {
            %>
            <form id="recForm" name="recForm" action="CalcController" method="POST">
                <input type="text" name="radius1" placeholder="length" value="">
                <input type="submit" name="submit" value="Calculate">
            </form>
             <%
                }
            %>
            <%  if (request.getAttribute("areaOfCircle") != null) {

            %>
            <form id="recForm" name="recForm" action="CalcController" method="POST">
                <input type="text" name="radius1" placeholder="length" value="">
                <input type="submit" name="submit" value="Calculate">
            </form>
            <h1>The area of the Circle is <%=request.getAttribute("areaOfCircle").toString()%></h1>
             <%
                }
            %>
            <img src="img/area-of-a-circle.png" alt=""/>
        </div>
         
        <br>
        <br>
        <div class="container marketing">
            <h1>Area of a Triangle</h1>
            <%
               if (request.getAttribute("areaOfTriangle") == null) {
            %>
            <form id="recForm" name="recForm" action="CalcController" method="POST">
                <input type="text" name="base" placeholder="base" value="">
                <input type="text" name="height" placeholder="height" value="">
                <input type="submit" name="submit" value="Calculate">
            </form>
             <%
                }
            %>
            <%  if (request.getAttribute("areaOfTriangle") != null) {

            %>
            <form id="recForm" name="recForm" action="CalcController" method="POST">
                <input type="text" name="base" placeholder="base" value="">
                <input type="text" name="height" placeholder="height" value="">
                <input type="submit" name="submit" value="Calculate">
            </form>
            <h1>The area of the Triangle is <%=request.getAttribute("areaOfTriangle").toString()%></h1>
            <%
                }
            %>
            <br>
            <img src="img/triangle area.gif" alt=""/>
           <%
                }
            %>
            
        </div>
    </body>
</html>
