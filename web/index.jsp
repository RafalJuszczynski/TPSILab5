<%@page session="true" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Java Web - Lab 5</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <% 
           Integer licznik=(Integer)session.getAttribute("licznik");
           if(licznik==null){
             session.setAttribute("licznik", 1);
           }else{
             session.setAttribute("licznik", licznik+1);
           }   
           
        %>
        <h1>Licznik wizyt: ${sessionScope.licznik}</h1>
        <div>Witam</div>
        <p><a href="/Lab4/personList">Person List</a></p>

</form>
    </body>
</html>
