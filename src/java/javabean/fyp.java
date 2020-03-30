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
public class fyp 
{


    private int fypid;
    private String superivorid;
    private String superviseid;
    private String supervisorname;
    private String supervisename;
    private String faculty;
    private String program;

    public fyp()
    {
    }
    
    public int getFypid() {
        return fypid;
    }

    public void setFypid(int fypid) {
        this.fypid = fypid;
    }

    public String getSupervisorname() 
    {
        return supervisorname;
    }

    public void setSupervisorname(String supervisorname) 
    {
        this.supervisorname = supervisorname;
    }

    public String getSupervisename() 
    {
        return supervisename;
    }

    public void setSupervisename(String supervisename) 
    {
        this.supervisename = supervisename;
    }
    
    public String getSuperivorid() 
    {
        return superivorid;
    }

    public void setSuperivorid(String superivorid) 
    {
        this.superivorid = superivorid;
    }

    public String getSuperviseid() 
    {
        return superviseid;
    }

    public void setSuperviseid(String superviseid) 
    {
        this.superviseid = superviseid;
    }

    public String getFaculty() 
    {
        return faculty;
    }

    public void setFaculty(String faculty) 
    {
        this.faculty = faculty;
    }

    public String getProgram() 
    {
        return program;
    }

    public void setProgram(String program) 
    {
        this.program = program;
    }
}
