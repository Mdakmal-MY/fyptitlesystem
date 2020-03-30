package javabean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author KaizoDono
 */
public class users 
{


    private String userid;
    private String username;
    private String passwords;
    private String fname;
    private String lname;
    private String gender;
    private String email;
    private int phonenum;
    private String userlevel;
    private String status; 
    private String address;
    
    public users()
    {
    }
    
    public users(String userid, String username, String passwords, String fname,
            String lname, String gender, String email, int phonenum, String userlevel, String status)
    {
        setUserid(userid);
        setUsername(username);
        setPasswords(passwords);
        setFname(fname);
        setLname(lname);
        setGender(gender);
        setEmail(email);
        setPhonenum(phonenum);
        setUserlevel(userlevel);
        setStatus(status);
    }

    public String getAddress() 
    {
        return address;
    }

    public void setAddress(String address) 
    {
        this.address = address;
    }
    
    public String getGender() 
    {
        return gender;
    }

    public void setGender(String gender) 
    {
        this.gender = gender;
    }
    
    public String getUserid() 
    {
        return userid;
    }

    public void setUserid(String userid) 
    {
        this.userid = userid;
    }

    public String getUsername() 
    {
        return username;
    }

    public void setUsername(String username) 
    {
        this.username = username;
    }

    public String getPasswords() 
    {
        return passwords;
    }

    public void setPasswords(String passwords) 
    {
        this.passwords = passwords;
    }

    public String getFname() 
    {
        return fname;
    }

    public void setFname(String fname) 
    {
        this.fname = fname;
    }

    public String getLname() 
    {
        return lname;
    }

    public void setLname(String lname) 
    {
        this.lname = lname;
    }

    public String getEmail() 
    {
        return email;
    }

    public void setEmail(String email) 
    {
        this.email = email;
    }

    public int getPhonenum() 
    {
        return phonenum;
    }

    public void setPhonenum(int phonenum) 
    {
        this.phonenum = phonenum;
    }

    public String getUserlevel() 
    {
        return userlevel;
    }

    public void setUserlevel(String userlevel) 
    {
        this.userlevel = userlevel;
    }

    public String getStatus() 
    {
        return status;
    }

    public void setStatus(String status) 
    {
        this.status = status;
    } 
    
    public String toString()
    {
        return String.format("User ID: %s\nUsername: %s\nName: %s %s\nEmail: %s\nPhone Number: %d\nUser: %s",
                userid, username, fname, lname, email, phonenum, status);
    }
}
