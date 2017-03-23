<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<t:wrapper>
    <jsp:attribute name="title">
		Add New Section
	</jsp:attribute>
	    <jsp:attribute name="navbar">
		<jsp:include page="../partials/navbar.jsp" />
	</jsp:attribute>
	<jsp:body>
		<h3>Add a Section</h3>
		<s:form name="menu" method = "POST" action="InsertSection">
			<s:textfield name= "description" label = "Section Name"/>
			<s:submit value="Add Section"/>
		</s:form>
    </jsp:body>
</t:wrapper>