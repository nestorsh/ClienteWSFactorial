<%-- 
    Document   : index
    Created on : 27-feb-2018, 10:22:57
    Author     : entrar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorial</title>
    </head>
    <body>
        <h1>Factorial</h1>
    </body>
</html>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	org.ulpgc.factorial.WSFactorial_Service service = new org.ulpgc.factorial.WSFactorial_Service();
	org.ulpgc.factorial.WSFactorial port = service.getWSFactorialPort();
	 // TODO initialize WS operation arguments here
	int num =4 ;
	// TODO process result here
	int result = port.factorial(num);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
