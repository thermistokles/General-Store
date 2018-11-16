<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<META http-equiv="refresh" URL="Login.jsp">
<title>What we have for you...</title>
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<%
      	if(session.getAttribute("uname") == null){
      		response.sendRedirect("Home.jsp");
      	}
      %>
			<div class="col-lg-3">
				<%
        	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
        
        	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
        	
        	response.setHeader("Expires", "0"); //Proxies
        
        %>
				<% String name; %>
				<form action="LogoutServlet">
					<input class="btn" type="submit" value="logout"><br>
				</form>

				<form action="SearchServlet">
					<input class="btn" type="submit" value="My Account">
				</form>
				<%
		if(!session.isNew()){
		name = (String)session.getAttribute("uname");
		%>
				<h1>
					Welcome
					<%=name %>!
				</h1>
				<br>
				<%
		}
		else{
			response.sendRedirect("Home.jsp");
		}
		%>


			</div>

			<center>
				<h1 class="my-4">General Store</h1>
			</center>

			<%
			int book1 = 50;
			int book2 = 50;
			int book3 = 50;
			int book4 = 50;
			int book5 = 50;
			int book6 = 50;
			%>
			<div class="row">

				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="lays.jpg"
							width="250px" height="150px" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Classic Salted Chips</a>
							</h4>
							<h5>Lays</h5>
							<h5>
								Rs.
								<%=book1 %></h5>
							<p class="card-text"></p>
							<form action="BuyServlet">
								<input class="btn" type="submit" value="Buy Now">
							</form>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="coke.jpg"
							width="250px" height="150px" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Diet Coke</a>
							</h4>
							<h5>Coca Cola</h5>
							<h5>
								Rs.
								<%=book2 %></h5>
							<p class="card-text"></p>
							<form action="BuyServlet">
								<input class="btn" type="submit" value="Buy Now">
							</form>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="lemonBhel.jpg"
							width="250px" height="150px" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Lemon Bhel</a>
							</h4>
							<h5>Haldiram</h5>
							<h5>
								Rs.
								<%=book3 %></h5>
							<p class="card-text"></p>
							<form action="BuyServlet">
								<input class="btn" type="submit" value="Buy Now">
							</form>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="soap.jpg"
							width="250px" height="150px" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Soap</a>
							</h4>
							<h5>Ponds</h5>
							<h5>
								Rs.
								<%=book4 %></h5>
							<p class="card-text"></p>
							<form action="BuyServlet">
								<input class="btn" type="submit" value="Buy Now">
							</form>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="bourbon.jpg"
							width="250px" height="150px" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Bourbon Biscuits</a>
							</h4>
							<h5>Britania</h5>
							<h5>
								Rs.
								<%=book5 %></h5>
							<p class="card-text"></p>
							<form action="BuyServlet">
								<input class="btn" type="submit" value="Buy Now">
							</form>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="milk.jpg"
							width="250px" height="150px" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Milk</a>
							</h4>
							<h5>Amul</h5>
							<h5>
								Rs.
								<%=book6 %></h5>

							<p class="card-text"></p>
							<form action="BuyServlet">
								<input class="btn" type="submit" value="Buy Now">
							</form>
						</div>
					</div>
				</div>

			</div>
			<!-- /.row -->

		</div>
		<!-- /.col-lg-9 -->

	</div>
	<!-- /.row -->

	</div>
	<!-- /.container -->


</body>
</html>