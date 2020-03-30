/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javabean.booking;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KaizoDono
 */
public class proposeNow extends HttpServlet {

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
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        
        String title = request.getParameter("title");
        String notes = request.getParameter("notes");
        int fypid = Integer.parseInt(request.getParameter("fypid"));
        booking b = new booking();
        b.setTitle(title);
        b.setNotes(notes);
        b.setFypid(fypid);
 
        int status = fypDAO.bookTitle(b);
        
        if(status>0)
        {
            response.setHeader("Refresh", "3; checktitleServlet");
            out.println("<center><p style='Color:green;font-size:38px;font-family:calibri;margin-top:10%;"
                    + "width:100%; height:100%;'>Your<br><b>"+b.getTitle()+"</b> Book!!</p></center>");   
        }
        else
        {
            response.setHeader("Refresh", "3; checktitleServlet");
            out.println("<center><p style='Color:red;font-size:38px;font-family:calibri;margin-top:10%;"
                    + "width:100%; height:100%;'>FAILED</p></center>");              
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
