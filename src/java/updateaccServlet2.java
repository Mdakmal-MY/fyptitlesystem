/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javabean.users;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KaizoDono
 */
public class updateaccServlet2 extends HttpServlet {

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
        
        String userid = request.getParameter("userid");
        String Fname = request.getParameter("Fname");
        String Lname = request.getParameter("Lname");
        String Uname = request.getParameter("Uname");
        String password = request.getParameter("passwords");
        String gender = request.getParameter("Gender");
        String address = request.getParameter("address");
        int phone = Integer.parseInt(request.getParameter("phoneNum"));
        String email = request.getParameter("eAddress");
               
        users u = new users();
        u.setUserid(userid);
        u.setUsername(Uname);
        u.setPasswords(password);
        u.setFname(Fname);
        u.setLname(Lname);
        u.setGender(gender);
        u.setPhonenum(phone);
        u.setEmail(email);
        u.setAddress(address);
        
        String[] user = new String[4];
        user[0] = u.getUserid();
        user[1] = u.getPasswords();
        user[2] = u.getUserlevel();
        user[3] = u.getUsername();
        
        int status = fypDAO.updateUser(u);
        if(status>0)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("CurrentUser",user);
            response.setHeader("Refresh", "3; updateaccServlet");
            out.println("<center><p style='Color:green;font-size:38px;font-family:calibri;margin-top:10%;"
                    + "width:100%; height:100%;'>Account <b>"+userid+"</b> Updated</p></center>");
        }
        else
        {
            response.setHeader("Refresh", "2; updateaccServlet");
            out.println("<center><p style='Color:RED;font-size:38px;font-family:calibri;margin-top:10%;"
                    + "width:100%; height:100%;'>Updated Failed<br>Make Sure Fill All the Form</p></center>");     
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
