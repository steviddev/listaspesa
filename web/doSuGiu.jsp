<jsp:useBean id="listaSpesa" 
             class="it.stevid.listaspesa.ListaSpesaBean" 
             scope="session"></jsp:useBean>

<% 
    String pos = request.getParameter("posizione");
    String azione = request.getParameter("azione");
    if(!pos.isEmpty() && !azione.isEmpty()){
        if( azione.equals("SU"))
            listaSpesa.scambia(Integer.parseInt(pos),Integer.parseInt(pos)-1);    
        if( azione.equals("GIU"))
            listaSpesa.scambia(Integer.parseInt(pos),Integer.parseInt(pos)+1);            
    }

%>
<jsp:forward page="viewLista.jsp"></jsp:forward>