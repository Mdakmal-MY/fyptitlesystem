/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javabean.fyp;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KaizoDono
 */
public class setupfypServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int status = 0;
        String type = request.getParameter("type");
        String id = request.getParameter("id");
        String program = request.getParameter("program");
        String faculty = request.getParameter("faculty");
        fyp f = new fyp();
        if(type.equals("Lecturer"))
        {
            String superviseid = request.getParameter("supervise");
            f.setSuperivorid(id);;
            f.setSuperviseid(superviseid);
            f.setFaculty(faculty);
            f.setProgram(program);
            
            status = fypDAO.registerFYP(f);
            if(status>0)
            {
                response.sendRedirect("reqregisterServlet");
            }
            else
            {
                out.println("failed");
            }
        }
        else if(type.equals("Student"))
        {
            String supervisorid = request.getParameter("supervisor");
            f.setSuperviseid(id);;
            f.setSuperivorid(supervisorid);
            f.setFaculty(faculty);
            f.setProgram(program);
            
            status = fypDAO.registerFYP(f);
            if(status>0)
            {
                 response.sendRedirect("reqregisterServlet");
            }
            else
            {
                out.println("failed");
            }
        }    
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
