<jsp:useBean id="listaSpesa" 
             class="it.stevid.listaspesa.ListaSpesaBean" 
             scope="session"></jsp:useBean>

<% 
    String voce = request.getParameter("voce");
    if(!voce.isEmpty())
        listaSpesa.aggiungi(voce);

%>
<jsp:forward page="viewLista.jsp"></jsp:forward>