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
public class booking 
{
    private int bookingid;
    private int fypid;
    private String title;
    private String Notes;
    private String status;
    private String bookingdate;
    private String studentid;
    private String studentname;
    private String supervisorid;
    private String supervisorname;
    
    public booking()
    {
    }

    public String getStudentid() 
    {
        return studentid;
    }

    public void setStudentid(String studentid) 
    {
        this.studentid = studentid;
    }

    public String getStudentname() 
    {
        return studentname;
    }

    public void setStudentname(String studentname) 
    {
        this.studentname = studentname;
    }

    public String getSupervisorid() 
    {
        return supervisorid;
    }

    public void setSupervisorid(String supervisorid) 
    {
        this.supervisorid = supervisorid;
    }

    public String getSupervisorname() 
    {
        return supervisorname;
    }

    public void setSupervisorname(String supervisorname) 
    {
        this.supervisorname = supervisorname;
    }
    
    public int getBookingid() 
    {
        return bookingid;
    }

    public void setBookingid(int bookingid) 
    {
        this.bookingid = bookingid;
    }

    public int getFypid() 
    {
        return fypid;
    }

    public void setFypid(int fypid) 
    {
        this.fypid = fypid;
    }

    public String getTitle() 
    {
        return title;
    }

    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getNotes() 
    {
        return Notes;
    }

    public void setNotes(String Notes) 
    {
        this.Notes = Notes;
    }

    public String getStatus() 
    {
        return status;
    }

    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getBookingdate() 
    {
        return bookingdate;
    }

    public void setBookingdate(String bookingdate) 
    {
        this.bookingdate = bookingdate;
    }
}
