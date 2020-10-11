<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
	.button {
  background-color: #9C27B0;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>

</head>
<body>
	<div class="container">
		<div class="row"> 
			<h2>Login</h2>
			<%-- <c:url var="action" value="/registration/new"></c:url> --%>
			
			<form action="" method="post" id="form-login"
			class="form-horizontal"">

				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="userName" name="userName" class="form-control"
							required="required" placeholder="User Name" maxlength="14" size="14">
					</div>
				</div>
			
				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="password" name="password"
							class="form-control" required="required"
							placeholder="Password">
					</div>
				</div>
				
				<!-- Submit Button -->
				<div class="form-group">
					<div class="col-md-8">
						<button type="" class="btn button" value = "save">Login</button>
					</div>
				</div>
			</form>
			
		</div>
	</div>
</body>
</html>
