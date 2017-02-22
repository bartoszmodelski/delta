<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
	
<t:wrapper>
    <jsp:attribute name="title">
		Login
	</jsp:attribute>
    <jsp:attribute name="navbar">
		<jsp:include page="partials/navbar.jsp" />
	</jsp:attribute>
    <jsp:body>	
		<h3>Login below:</h3>
		<s:actionmessage />
		<s:actionerror />
		<br><s:form id="idLoginForm" action="loginUser">
			<s:textfield name="userName" placeholder="Username" label="Username" />
			<s:password name="password" placeholder="Password" label="Password" />
			<s:submit value="Submit" />
		</s:form>
    </jsp:body>
</t:wrapper>

