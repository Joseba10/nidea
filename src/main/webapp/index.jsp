<html>

<body>
<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>

<%

	/*Seria como el ?php*/
	//Scriplet < % .... % >
	//Varias sentencias
	String nombre="pepe";

%>
	<!-- Pintar la variable  -->
<h2>Hello <%=nombre%></h2>
<a href="generar-mesa">Quieres comprar una mesa?</a>

<jsp:include page="templates/footer.jsp"></jsp:include>

</body>
</html>
