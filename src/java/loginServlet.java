/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javabean.users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KaizoDono
 */
public class loginServlet extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        
        try 
        {
            users u = new users();
            u.setUserid(request.getParameter("userid"));
            u.setPasswords(request.getParameter("password"));
            
            String[] user = fypDAO.verifylogin(u);
            
            if(user[2].equals("Admin"))
            {
                HttpSession session = request.getSession(true);
                session.setAttribute("CurrentUser",user);
                response.sendRedirect("reqregisterServlet");
            }
            
            else if(user[2].equals("Lecturer"))
            {
                HttpSession session = request.getSession(true);
                session.setAttribute("CurrentUser",user);
                response.sendRedirect("requesttitleServlet");       
            }
            
            else if(user[2].equals("Student"))
            {
                HttpSession session = request.getSession(true);
                session.setAttribute("CurrentUser",user);
                response.sendRedirect("checktitleServlet");       
            }
            
            else if(user[2].equals("NULL"))
            {
                response.setHeader("Refresh", "3; approvedServlet");
                out.println("<center><p style='Color:red;font-size:38px;font-family:calibri;margin-top:10%;"
                        + "width:100%; height:100%;'>Wrong Userid or Password</p></center>");
            }
        }
        catch(Exception e)
        {
            System.out.print(e);
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
