<%@ page import="placement.Placement_Opportunity" %>



<div class="fieldcontain ${hasErrors(bean: placement_OpportunityInstance, field: 'application', 'error')} ">
	<label for="application">
		<g:message code="placement_Opportunity.application.label" default="Application" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${placement_OpportunityInstance?.application?}" var="a">
    <li><g:link controller="application" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="application" action="create" params="['placement_Opportunity.id': placement_OpportunityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'application.label', default: 'Application')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: placement_OpportunityInstance, field: 'companyname', 'error')} ">
	<label for="companyname">
		<g:message code="placement_Opportunity.companyname.label" default="Companyname" />
		
	</label>
	<g:textField name="companyname" value="${placement_OpportunityInstance?.companyname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: placement_OpportunityInstance, field: 'jobtitle', 'error')} ">
	<label for="jobtitle">
		<g:message code="placement_Opportunity.jobtitle.label" default="Jobtitle" />
		
	</label>
	<g:textField name="jobtitle" value="${placement_OpportunityInstance?.jobtitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: placement_OpportunityInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="placement_Opportunity.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${placement_OpportunityInstance?.status}"/>
</div>

