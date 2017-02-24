<%-- 
    Document   : viewLista
    Created on : Feb 23, 2017, 5:12:09 PM
    Author     : stevid
--%>


<%@page import="it.stevid.listaspesa.Voce"%>
<jsp:useBean id="listaSpesa" 
             class="it.stevid.listaspesa.ListaSpesaBean" 
             scope="session"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista della spesa</title>
        <link rel="stylesheet" type="text/css" href="css/stili.css"/>
    </head>
    <body>
        <h1>Lista:</h1>
        <table>
            <%
                /*<tr><td>nome</td><td>modifica elimina su giu</td>
                </tr>*/
                /*
                for(int i=0; i<listaSpesa.getSpesa().size()-1;i++){
                    out.print("<tr><td>"+listaSpesa.getSpesa().get(i).getVoce());*/
                int pos = 0;
                for(Voce v: listaSpesa.getSpesa()){
                    out.print("<tr><td>");
                    out.print(v.getVoce());
                    out.print("</td><td>");
                    out.print("<a href=\"doElimina.jsp?posizione="+pos+"\">Elimina</a> ");
                    out.print("<a href=\"doModifica.jsp?posVoce="+pos+"\">Modifica</a> ");
                    if( pos == 0 ){
                        if(pos != listaSpesa.getSpesa().size()-1)
                            out.print("<a href=\"doSuGiu.jsp?posizione="+pos+"&azione=GIU\">Giu</a> ");
                    }else
                    if( pos == listaSpesa.getSpesa().size()-1 ){
                        out.print("<a href=\"doSuGiu.jsp?posizione="+pos+"&azione=SU\">Su</a> ");
                    }else{
                        out.print("<a href=\"doSuGiu.jsp?posizione="+pos+"&azione=GIU\">Giu</a> ");
                        out.print("<a href=\"doSuGiu.jsp?posizione="+pos+"&azione=SU\">Su</a> ");
                    }         
                    pos++;
                    //aggiunta azioni
                }
                 //response.sendRedirect(request.getContextPath() + "/viewLista.jsp");       
            %>
            <tr>
                <form action="doAggiungi.jsp">
                    <td><input type="text" name="voce"/></td>
                    <td><input type="submit" Value="Aggiungi"/></td>
                </form>
            </tr>
            <tr>
                <td><a href="viewStampa.jsp">STAMPA</a></td><TD></TD>
            </tr>            
        </table>
    </body>
</html>
