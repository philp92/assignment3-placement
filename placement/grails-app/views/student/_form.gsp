<%@ page import="placement.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'application', 'error')} ">
	<label for="application">
		<g:message code="student.application.label" default="Application" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.application?}" var="a">
    <li><g:link controller="application" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="application" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'application.label', default: 'Application')])}</g:link>
</li>
</ul>

</div>


<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${studentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'coursecode', 'error')} ">
	<label for="coursecode">
		<g:message code="student.coursecode.label" default="Coursecode" />
		
	</label>
	<g:textField name="coursecode" value="${studentInstance?.coursecode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="student.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${studentInstance?.notes}"/>
</div>

