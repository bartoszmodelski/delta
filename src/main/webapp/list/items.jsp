<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<t:wrapper>
    <jsp:attribute name="title">
		<s:property value="venueName"/>
	</jsp:attribute>
    <jsp:attribute name="navbar">
		<jsp:include page="/partials/navbar.jsp"/>
	</jsp:attribute>
    <jsp:body>
        <div class="container">
            <h2 class="text-center"><s:property value="venueName"/></h2>
            <logic:iterate>
                <s:form method="POST" action="summary">
                    <s:iterator value="items">
                        <h3><s:property value="key"/></h3>
                        <table class="table table-responsive">
                            <colgroup>
                                <col class="col-6">
                                <col class="col-3">
                                <col class="col-3">
                            </colgroup>
                            <s:iterator value="value">
                                <tr>
                                    <td>
                                        <s:property value="name"/>
                                    </td>
                                    <td>
                                        &pound;<s:property value="getText('{0,number,#,##0.00}',{price})"/>
                                    </td>
                                    <td>
                                        <s:textfield name="itemsToOrder['%{ID}']" value="0"
                                                     cssClass="form-control"/>
                                    </td>
                                </tr>
                            </s:iterator>
                        </table>
                    </s:iterator>
                    <s:submit value="Purchase!" cssClass="btn btn-primary btn-sm" cssStyle="margin-bottom: 10px;"/>
                    <input type="hidden" name="venue" value="${id}">
                </s:form>
            </logic:iterate>
        </div>
    </jsp:body>
</t:wrapper>
