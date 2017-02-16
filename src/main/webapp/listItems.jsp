
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Venues</title>
<body>
	<!-- action<> for testing purposes, delete when later -->
	<h1>Struts <logic:iterate> Venues</h1>
	<s:form method = "POST" action="purchase">
		<s:iterator value="items">
			<h2><s:property value="key" /></h2>
				<s:iterator value="value">
						<h3><s:property value="key" /></h3>
						<table>
						<col width="200">
						<col width="50">
						<col width="50">
						<s:iterator value="value">
							<tr>
								<td>
									<s:property value="key"/> 
								</td>
								<td>
									<s:property value="value"/>
								</td>
								<td>
									<s:textfield name= "<s:property value="key"/>" label = "Quanity" value = "0"/>
								</td>
							</tr>
						</s:iterator
						</table>
				</s:iterator>
		</s:iterator>
	</s:form>
</body>
</html>
	 
