<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action='/Lab4/personList' method='post'>
            Przedstaw się ładnie:<br>
        <input type='text' name='imie'  placeholder="imie"><br>
        <input type='text' name='nazwisko' placeholder="nazwisko"><br>
        <input type='text' name='email' placeholder="email"><br>
        <input type='submit' value="Dodaj Studenta">
        </form>

        <br>
        <table>
         
        <c:forEach items="${lista}" var="person">
            <tr><th>Imie</th><th>Nazwisko</th><th>Email</th></tr>
        <tr>
            <td>
            ${person.getImie()} ${person.getNazwisko()} ${person.getEmail}
            </td>
        </tr>
        </c:forEach>
        </table>
    </body>
</html>
