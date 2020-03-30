<%@page import="javabean.booking"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FYP Title Booking</title>
        <link rel="stylesheet" type="text/css" href="style/style.css" />
        
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <div class="container">
            <div class="boxs">
                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Search FYP Title">

                <table id="myTable">
                    <tr class="header">
                        <th style="width:70%;">Title</th>
                        <th style="width:30%;">Status</th>
                    </tr>
                    <%
                        ArrayList<booking> b = (ArrayList)request.getAttribute("viewTitle");
                        
                        if(b.size()>0)
                        {
                            for(int i=0;i<b.size();i++)
                            {
                    %>
                        <td><%=b.get(i).getTitle()%></td>
                        <td id="statusid"><%=b.get(i).getStatus()%></td>
                    <%
                            }
                        }
                        else
                        {
                    %>
                    <tr>
                        <td colspan="2">None Title</td>
                    </tr>    
                    <%
                        }
                    %>
                    <tr>
                        <td colspan="2" id="lastrow"></td>
                    </tr>    
                </table>

                <script>
                function myFunction() {
                  var input, filter, table, tr, td, i, txtValue;
                  input = document.getElementById("myInput");
                  filter = input.value.toUpperCase();
                  table = document.getElementById("myTable");
                  tr = table.getElementsByTagName("tr");
                  for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
                    if (td) {
                      txtValue = td.textContent || td.innerText;
                      if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                                } else {
                                    tr[i].style.display = "none";
                                }
                            }
                        }
                    }
                </script>   
            </div>            
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>
