<%@page import="it.stevid.listaspesa.Voce"%>
<jsp:useBean id="listaSpesa" 
             class="it.stevid.listaspesa.ListaSpesaBean" 
             scope="session"></jsp:useBean>
<jsp:useBean id="modificaVoce" 
             class="it.stevid.listaspesa.ModificaFormData" 
             scope="session"></jsp:useBean>

<% 
    String param = request.getParameter("voce");
    listaSpesa.getSpesa().get(modificaVoce.getPosVoce()).setVoce(param);
%>
<jsp:forward page="viewLista.jsp"></jsp:forward>