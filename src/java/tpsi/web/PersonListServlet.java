package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        HttpSession session = request.getSession();
        List <Student> lista;
        if(session.getAttribute("lista_studentow")==null){
            lista = new ArrayList<>();
            session.setAttribute("lista_studentow", lista);
        }else{
            lista = (List<Student>) session.getAttribute("lista_studentow");
            session.setAttribute("lista_studentow", lista);
        }
        request.getRequestDispatcher("personList.jsp").forward(request, response);
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        processRequest(request, response);
        
        HttpSession session = request.getSession();
        List <Student> lista;
        if(session.getAttribute("lista_studentow")==null){
            lista = new ArrayList<>();
            session.setAttribute("lista_studentow", lista);
        }else{
            lista = (List<Student>) session.getAttribute("lista_studentow");
            session.setAttribute("lista_studentow", lista);
        }

        String imie = request.getParameter("imie");
        String nazwisko = request.getParameter("nazwisko");
        String email = request.getParameter("email");
        
        Student student = new Student(
            imie,
            nazwisko,
            email
        );
        
        if(imie.length()!=0 && nazwisko.length()!=0 && email.length()!=0){
            lista.add(student);
        }
        session.setAttribute("lista_studentow", lista);
        request.getRequestDispatcher("personList.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
