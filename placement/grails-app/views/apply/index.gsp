<g:form action="processApplication">

<div>
<label for="student">
		<g:message code="apply.student.label" default="Student" />
</label>
<g:textField name="student" value="${applyInstance?.student}"/>
</div>
<div>
<label for="jobtitle">
		<g:message code="apply.jobtitle.label" default="Job Title" />
</label>
<g:textField name="jobtitle" value="${applyInstance?.jobtitle}"/>
</div>

<div>
<g:submitButton name="apply" class="save" value="${message(code: 'default.button.apply.label', default: 'Apply')}" />
</div>				

</g:form>

