/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean;

/**
 *
 * @author KaizoDono
 */

public class lecturer extends users
{
    private String title;
    private String faculty;
    private String supervise;
    
    public lecturer()
    {
    }
    
    public lecturer(String userid, String username, String passwords, String fname,
                  String lname, String gender, String email, int phonenum, String userlevel, String status,
                  String faculty, String supervise, String title)
    {
        super(userid, username, passwords, fname, lname, gender, email, phonenum, userlevel, status);
        setSupervise(supervise);
        setFaculty(faculty);
        setTitle(title);
    }
    
    private void setTitle(String title)
    {
        this.title = title;
    }
    
    public String getTitle()
    {
        return title;
    }
    
    public void setFaculty(String faculty)
    {
        this.faculty = faculty;
    }
    
    public String getFaculty()
    {
        return faculty;
    }

    public String getSupervise() 
    {
        return supervise;
    }

    public void setSupervise(String supervise)
    {
        this.supervise = supervise;
    }
    
    public String toString()
    {
        return String.format("%s %s\nFaculty: %s\nSupervise: %s",getTitle(), super.toString(), getFaculty(), getSupervise());
    }
}
