<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row"> 
			<h2>Registration</h2>
			<c:url var="action" value="/registration/new"></c:url>
			
			<form:form action="${action}" commandName="attrRegistrationModel">
				<table>
					<tr>
						<td><form:input class="form-control" path="phoneNumber">
							<spring:message text="Mobile Number" />
						</form:input></td>
					</tr>
					<tr>
						<td><form:input class="form-control" path="firstName">
							<spring:message text="First Name" />
						</form:input></td>
					</tr>
					<tr>
						<td><form:input class="form-control" path="lastName">
							<spring:message text="Last Name" />
						</form:input></td>
					</tr>
					<tr>
						<td><form:input class="form-control" path="email">
							<spring:message text="Email" />
						</form:input></td>
					</tr>	
					<tr>
						<input class="btn btn-primary" type="submit" value="<spring:message text="Register"/>" />
					</tr>														
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>