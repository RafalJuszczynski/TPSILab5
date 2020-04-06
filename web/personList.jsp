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
        
        <br>
        <table>
         <tr><th>Imie</th><th>Nazwisko</th><th>Email</th></tr>
        <c:forEach items="${sessionScope.lista_studentow}" var="person">
            
        <tr>
            <td>
            ${person.imie}  
            </td>
             <td>
            ${person.nazwisko}
            </td>
             <td>
             ${person.email}
             </td>
        </tr>
        </c:forEach>
        </table>
        
        <form action='/Lab4/personList' method='post'>
        <input type='text' name='imie'  placeholder="imie"><br>
        <input type='text' name='nazwisko' placeholder="nazwisko"><br>
        <input type='text' name='email' placeholder="email"><br>
        <input type='submit' value="Dodaj Studenta">
        </form>
    </body>
</html>
