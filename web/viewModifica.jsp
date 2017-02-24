<%-- 
    Document   : viewModifica
    Created on : Feb 24, 2017, 2:07:16 PM
    Author     : stevid
--%>
<jsp:useBean id="modificaVoce" 
             class="it.stevid.listaspesa.ModificaFormData" 
             scope="session"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifica Lista</title>
    </head>
    <body>
        <h1>Modifica Elemento</h1>
        <form action="doModificaAction.jsp">
            <input type="text" name="voce" value="<%out.print(modificaVoce.getVoce().getVoce());%>"/>
            <input type="hidden" name="posVoce" value="<%out.print(modificaVoce.getPosVoce());%>"/>
            <input type="submit" value="modifica"/>
        </form>
    </body>
</html>
