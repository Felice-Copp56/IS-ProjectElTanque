<%@ page import="java.util.*,model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="headerUtente.jsp">
	<jsp:param value="" name="" />
</jsp:include>

<%
	String error = (String) request.getAttribute("ERRORMSG");
%>
<div id="layoutSidenav_content">
	<main>
	<div class="container-fluid">
		<h1 class="mt-4">Cerca tavoli</h1>
<%
				if (error != null) {
			%>

		<div class="row">
		<div class="col-12">
				<div class="alert alert-danger alert-dismissible fade show"
					role="alert">
					<strong>ERRORE  </strong> <%=error%>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
			<%
				}
			%>
			<div class="col">
			<form method="get" action="FiltraTavoli">
					<div class="w-100"></div>
				<div class="form-row m-6 mx-auto" method="get"
						onsubmit="/FiltraTavoli">
						<div class="form-group col-md-6 m-3" method="get"
							onsubmit="/FiltraTavoli">
							<label for="inputEmail4">Data</label> <input type="date"
								class="form-control" id="Data" name="Data" placeholder="Data"
								min="2020-01-01" max="2020-12-31" >
						</div>
					</div>
					<div class="w-100"></div>
					<div class="form-row m-3">
						<div class="form-group col-md-3">
							<label for="inputEmail4">Fascia oraria</label> <select
								id="fasciaOraria" name="fasciaOraria" class="form-control" >
								<option selected>Scegli...</option>
								<option>18:00/19:00</option>
								<option>19:00/20:00</option>
								<option>20:00/21:00</option>
								<option>21:00/22:00</option>
								<option>22:00/23:00</option>
								<option>23:00/24:00</option>
							</select>
						</div>
						<div class="form-group col-md-3">
							<label for="inputPassword4">Numero persone</label> <input
								type="number"  class="form-control" name="numeroPersone"
								id="numeroPersone" placeholder="Numero persone">
						</div>
					</div>
					<div class="w-100"></div>
					<div class="row m-3">
						<div class="col justify-content-center mx-auto">
							<button type="submit"
								class="btn btn-primary justify-content-center">Cerca
								tavoli</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</main>

</div>

</div>

<jsp:include page="footer.jsp">
	<jsp:param value="" name="" />
</jsp:include>
