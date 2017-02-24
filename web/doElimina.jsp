<jsp:useBean id="listaSpesa" 
             class="it.stevid.listaspesa.ListaSpesaBean" 
             scope="session"></jsp:useBean>

<% 
    String voce = request.getParameter("posizione");
    if(!voce.isEmpty()){
        System.out.println(voce);
        int pos = Integer.parseInt(voce);
        listaSpesa.elimina(pos);
    }

%>
<jsp:forward page="viewLista.jsp"></jsp:forward>