package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.*;

/**
 *
 * @author trungluc
 */
public class SearchStudentServlet extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("search.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        
        String sValue = request.getParameter("sValue");
        String sCriteria = request.getParameter("sCriteria");
        
        
        StudentList sList = (StudentList) request.getSession().getAttribute("sList");
        ArrayList<Student> students = sList.getList();
        
        ArrayList<Student> result =  new ArrayList<>();
        
        for (Student student: students){
            
            // check if filter with ID
            if ( 
                sCriteria.equals("ID")
                && student.getId() == Integer.parseInt(sValue)
            ) {
               result.add(student);
            }
            
            // check if filter with Name
            if ( 
                sCriteria.equals("Name")
                && student.getName().contains(sValue)
            ) {
               result.add(student);
            }
        }
        
        
        request.setAttribute("searchList", result);
        request.setAttribute("sValue", sValue);
        request.setAttribute("sCriteria", sCriteria);
        request.getRequestDispatcher("search.jsp").forward(request, response);
    }


}
