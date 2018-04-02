<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>
<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>


<%

	//Recoger atributo del controlador,si es que existe
	Mesa mesa= (Mesa)request.getAttribute("mesa"); //Con parentesis se castea
	if (mesa==null){
		
		mesa=new Mesa();
		
	}
	
%>

<p>Precio: <%= mesa.getPrecio() %>&euro;</p>

<form action="generar-mesa" method="post">

<label for="patas">Numero de patas:</label>
<input type="number" name="patas" value="4">

<label for="dimension">Dimension:</label>
<input type="number" name="dimension" value="1">

<label for="color">Color:</label>
<input type="color" name="color" value="#FFFFFF">

<label for="color">Custom:</label>
<input type="checkbox" name="color" value="custom">


<label for="material">Material:</label>
<select name="material">

<option value="1">Madera</option>
  <option value="2">Acero</option>
  <option value="3">Aluminio</option>
  <option value="4">Plastico</option>
</select>



<input type="submit" value="Calcular Precio">

</form>


<jsp:include page="templates/footer.jsp"></jsp:include>