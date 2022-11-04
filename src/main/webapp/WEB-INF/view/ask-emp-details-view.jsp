<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Dear Employee, Please enter your details</h2>
<br>
<br>

<form:form action="showDetails" modelAttribute="employee">
    Name<form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>

    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>

    Which car do you want?
    <br><br>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>

    Foreign Language(s)
    <br>
    En<form:checkbox path="languages" value="English"/>
    DE<form:checkbox path="languages" value="Deutch"/>
    FR<form:checkbox path="languages" value="France"/>

    <input type="submit" value="OK">
</form:form>

</body>
</html>