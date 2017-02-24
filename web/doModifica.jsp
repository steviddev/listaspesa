<jsp:useBean id="listaSpesa" 
             class="it.stevid.listaspesa.ListaSpesaBean" 
             scope="session"></jsp:useBean>
<jsp:useBean id="modificaVoce" 
             class="it.stevid.listaspesa.ModificaFormData" 
             scope="session"></jsp:useBean>

<% 
    String posizione = request.getParameter("posVoce");
    int pos = Integer.parseInt(posizione);
    modificaVoce.setVoce(listaSpesa.getSpesa().get(pos));
    modificaVoce.setPosVoce(pos);

%>
<jsp:forward page="viewModifica.jsp"></jsp:forward>
