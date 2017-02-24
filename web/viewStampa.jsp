<%-- 
    Document   : viewStampa
    Created on : Feb 24, 2017, 11:48:32 AM
    Author     : stevid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="it.stevid.listaspesa.Voce"%>
<jsp:useBean id="listaSpesa" 
             class="it.stevid.listaspesa.ListaSpesaBean" 
             scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stampa</title>
    </head>
    <body>
        <h1>Lista per stampa</h1>
            <%
                /*<tr><td>nome</td><td>modifica elimina su giu</td>
                </tr>*/
                /*
                for(int i=0; i<listaSpesa.getSpesa().size()-1;i++){
                    out.print("<tr><td>"+listaSpesa.getSpesa().get(i).getVoce());*/
                int pos = 0;
                for(Voce v: listaSpesa.getSpesa()){
                    %>
                    <ul>
                        <li>
                            <% out.print(v.getVoce()); %>
                        </li>
                    </ul>
                    <%
                    
                    //aggiunta azioni
                }
                out.print("<a href=\"viewLista.jsp\">Indietro</a>");
                 //response.sendRedirect(request.getContextPath() + "/viewLista.jsp");       
            %>        
    </body>
</html>
