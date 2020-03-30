/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javabean.users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KaizoDono
 */
public class registerServlet extends HttpServlet {

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
        
        String Fname = request.getParameter("Fname");
        String Lname = request.getParameter("Lname");
        String Uname = request.getParameter("Uname");
        String password = request.getParameter("passwords");
        String gender = request.getParameter("Gender");
        String address = request.getParameter("address");
        int phone = Integer.parseInt(request.getParameter("phoneNum"));
        String email = request.getParameter("eAddress");
        String userlevel = request.getParameter("userlevel");
        String userid = request.getParameter("userid");
       /* String id = fypDAO.getLastID();
        String splitid[] = id.split("S");
        int ids = Integer.parseInt(splitid[1]); 
        String userid = "S"+(++ids);*/
        
        users u = new users();
        u.setUserid(userid);
        u.setUsername(Uname);
        u.setPasswords(password);
        u.setFname(Fname);
        u.setLname(Lname);
        u.setGender(gender);
        u.setPhonenum(phone);
        u.setEmail(email);
        u.setStatus("Pending");
        u.setUserlevel(userlevel);
        u.setAddress(address);
        
        int status = fypDAO.registerUser(u);
     
        if(status>0)
        {
            response.setHeader("Refresh", "5; approvedServlet");
            out.println("<center><p style='Color:green;font-size:38px;font-family:calibri;margin-top:10%;"
                    + "width:100%; height:100%;'>Register Complete!<br>Your Login id : <b>"+userid+"</b></p></center>");
        }
        else
        {
            response.setHeader("Refresh", "2; register.jsp");
            out.println("<center><p style='Color:red;font-size:38px;font-family:calibri;margin-top:10%;"
                    + "width:100%; height:100%;'>ID used<br>Registration Failed</p></center>");
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
