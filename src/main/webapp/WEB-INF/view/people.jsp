<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row">
		<div class="span8 offset2">
			<div class="page-header">
				<h1>Simple CRUD Page</h1>
			</div>
			<form:form method="post" action="add" commandName="person"
				class="form-vertical">
				<form:label path="firstName">First Name</form:label>
				<form:input path="firstName" />
				<form:label path="lastName">Last Name</form:label>
				<form:input path="lastName" />
				<input type="submit" value="Add Person" class="btn" />
			</form:form>
			<h3>People</h3>
			<c:if test="${!empty peopleList}">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Name</th>
							<th>&nbsp;</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${peopleList}" var="person">
							<tr>
								<td>${person.lastName}, ${person.firstName}</td>
								<td><a href="delete/${person.id}">delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
		</div>
	</div>
</div>
