<%@ attribute name="tab" required="true" %>
<%@ attribute name="descricao" required="true" %>
<%@ attribute name="glyphicon" required="true" %>
<%@ attribute name="active" required="false" %>

<li role="presentation" ${active eq true ? "class='active'" : ''}>
	<a href="#${tab}" aria-controls="${tab}" role="tab" data-toggle="tab">
		<span class="glyphicon ${glyphicon}"></span> ${descricao}
	</a>
</li>