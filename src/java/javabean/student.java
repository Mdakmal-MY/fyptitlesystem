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
public class student extends users
{
    private String supervisorid;
    private String faculty;
    private String program;
    
    public student()
    {
    }
    
    public student(String userid, String username, String passwords, String fname,
            String lname, String gender, String email, int phonenum, String userlevel, String status,
            String supervisorid, String faculty, String program)
    {
        super(userid, username, passwords, fname, lname, gender, email, phonenum, userlevel, status);
        setSupervisorid(supervisorid);
    }
    
    public void setSupervisorid(String supervisorid)
    {
        this.supervisorid = supervisorid;
    }
    
    public void setFaculty(String faculty)
    {
        this.faculty = faculty;
    }
    
    public void setProgram(String program)
    {
        this.program = program;
    }
    
    public String getSupervisorid()
    {
        return supervisorid;
    }
    
    public String getFaculty()
    {
        return faculty;
    }
    
    public String getProgram()
    {
        return program;
    }
    
    public String toString()
    {
        return String.format("%s\nSupervisor: %s\nFaculty: %s\nProgram: %s",
                            super.toString(), supervisorid, faculty, program);
    }
}
