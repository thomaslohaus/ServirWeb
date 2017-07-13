<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="id" required="true" %>
<%@ attribute name="text" required="true" %>
<%@ attribute name="col" required="true" %>
<%@ attribute name="type" required="false" %>
<%@ attribute name="classes" required="false" %>

<div class="input-field col ${col}">
	<input id="${id}" type="${type eq null ? 'text' : type}" class="${type eq 'date' ? '' : 'validate'} ${classes}">
	<label for="${id}">${text}</label>
</div>