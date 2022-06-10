<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html >
<html>
<head>
<title>Save Customer</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>Customer</h2>
			<span>
                            User: <security:authentication property="principal.username" />, Role(s): <security:authentication property="principal.authorities" />
                            &nbsp;<a href="${pageContext.request.contextPath}/showMyLoginPage?logout">Logout</a>
                        </span>
		</div>
	</div>
	<div id="container">
		<h3>Save Customer</h3>
		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">
			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			<table>
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><form:input path="firstName" />
							<form:errors path="firstName" cssClass="error"/>
						</td>
					</tr>
					<tr>
						<td><label>Last Name:</label></td>
						<td><form:input path="lastName" />
							<form:errors path="lastName" cssClass="error"></form:errors>
						</td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" />
							<form:errors path="email" cssClass="error"/>
						</td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		<div></div>
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back
				to List</a>
		</p>
	</div>
</body>

</html>










