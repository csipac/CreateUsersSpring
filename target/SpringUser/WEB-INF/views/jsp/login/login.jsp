<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Login</title>
	<%--Css--%>
	<spring:url value="/resources/core/css/materialize.css" var="materializeCss" />
	<spring:url value="resources/core/css/style.css" var="stylesCss" />
	<spring:url value="/resources/core/css/page-center.css" var="pagecenterCSS"/>

	<%--Plugs Css--%>
	<spring:url value="/resources/core/css/prism.css" var="prismCss"/>
	<spring:url value="/resources/core/js/plugins/perfect-scrollbar/perfect-scrollbar.css" var="perfectscrollCss"/>

	<%--JAVASCRIPTS--%>
	<spring:url value="/resources/core/js/jquery-1.11.2.min.js" var="jqueyJs"/>
	<spring:url value="/resources/core/js/materialize.js" var="materiaJs"/>
	<spring:url value="/resources/core/js/prism.js" var="prismJs"/>
	<spring:url value="/resources/core/js/plugins/perfect-scrollbar/perfect-scrollbar.min.js" var="perfectJs"/>
	<spring:url value="/resources/core/js/plugins.js" var="pluginJs"/>

	<spring:url value="/resources/core/images/rhema.jpg" var="rhemaJPG" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



	<%--Core css--%>
	<link href="${materializeCss}" rel="stylesheet">
	<link href="${stylesCss}" rel="stylesheet">
	<link href="${pagecenterCSS}" rel="stylesheet">

	<%--Plugins css--%>
	<link href="${prismCss}" rel="stylesheet">
	<link rel="stylesheet" href="${perfectscrollCss}">


</head>
<body>

<!-- Start Page Loading -->
<div id="loader-wrapper">
	<div id="loader"></div>
	<div class="loader-section section-left"></div>
	<div class="loader-section section-right"></div>
</div>
<!-- End Page Loading -->

<div id="login-page" class="row">
	<div class="col s12 z-depth-4 card-panel">
	<form:form id="loginForm" modelAttribute="login" action="loginProcess"
		method="post" class="login-form">
		<div class="row">
			<div class="input-field col s12 center">
				<img src="/resources/core/images/rhema.jpg" alt="" class="circle responsive-img valign profile-image-login">
				<p class="center login-form-text">Rhema</p>
			</div>
		</div>

		<%--USER DIV--%>
		<div>
			<div class="row margin">
				<div class="input-field col s12">
					<i class="mdi-social-person-outline prefix"></i>
					<form:input id="username" path="username" name="username" type="text" />
					<form:label for="username" class="center-align" path="username">Username</form:label>
				</div>
			</div>
		</div>

		<%--PASSWORD DIV--%>
		<div class="row margin">
			<div class="input-field col s12">
				<i class="mdi-action-lock-outline prefix"></i>
				<form:password path="password" name="password" id="password"/>
				<form:label path="password" for="password">Password</form:label>
			</div>
		</div>

		<%--CHECK REMEMBER--%>
		<div class="row">
			<div class="input-field col s12 m12 l12  login-text">
				<input type="checkbox" id="remember-me" />
				<label for="remember-me">Remember me</label>
			</div>
		</div>

		<%--REDIRECT LOGIN--%>
		<div class="row">
			<div class="input-field col s12">
				<form:button id="login" name="login" class="btn waves-effect waves-light col s12">Login</form:button>
			</div>
		</div>

		<%--REGISTER BUTTON--%>
		<div class="row">
			<div class="input-field col s6 m6 l6">
				<form:button id="regForm" name="user" class="btn waves-effect waves-light col s12">Register Now!</form:button>
			</div>
		</div>

		<table align="center">

			<%--<tr>--%>
				<%--<td></td>--%>
				<%--<td align="left"><form:button id="login" name="login">Login</form:button></td>--%>
			<%--</tr>--%>

			<tr></tr>
			<tr>
				<td></td>
				<td><a href="../home.jsp">Home</a></td>
			</tr>
		</table>
	</form:form>
	</div>
</div>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>

	<!-- jQuery Library -->
	<script type="text/javascript" src="${jqueyJs}"></script>
	<!--materialize js-->
	<script type="text/javascript" src="${materiaJs}"></script>
	<!--prism-->
	<script type="text/javascript" src="${prismJs}"></script>
	<!--scrollbar-->
	<script type="text/javascript" src="${perfectJs}"></script>

	<!--plugins.js - Some Specific JS codes for Plugin Settings-->
	<script type="text/javascript" src="${pluginJs}"></script>


</body>
</html>