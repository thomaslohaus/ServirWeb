<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="tab" required="true" %>
<%@ attribute name="page" required="true" %>

<div role="tabpanel" class="tab-pane active" id="${tab}">
	<c:import url="/WEB-INF/jsp/${page}"/>
</div>