<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <h1>Welcome <%=session.getAttribute("login_id") %> Login  </h1>
        Reset Password DBMS Page
        <%
            String newpassword=request.getParameter("newpass");
            String confirmpassword=request.getParameter("cnpass");
            String Acc =request.getParameter("Accno");
            String name =request.getParameter("Cname");
            
            out.println("<br> data input <br>");
            out.print("<br> Account number "+Acc);
            out.println("<br>new password  "+newpassword);
            out.println("<br>confirm password "+confirmpassword);
            out.print("<br>Customer name  "+name+" <br>");
            
            try
            {
                String passchangequery="select * from account where accno='"+Acc+"';";
                Statement stm=con.createStatement();
                ResultSet rs = stm.executeQuery(passchangequery);
                int count=0;
                while(rs.next())
                {
                    //out.println(rs.getString(10));
                    if(name.equals(rs.getString(2)))
                    {
                        count++;
                    }
                    
                }
                if(count>0)
                {
                    out.print("<br> Account number match");
                    if(newpassword.equals(confirmpassword))
                    {
                      out.println("<br> Congrats");  
                      
                      String updatepasswordquery="update account set password='"+newpassword+"' where accno='"+Acc+"';";
                      PreparedStatement pst=con.prepareStatement(updatepasswordquery);
                      pst.executeUpdate();
                      out.println("<br> Password has been reset ");
                      out.println("<br> <a href=Login.jsp>Now Login </a>");
                      
                    }
                    else
                    {
                        out.println("old and new password are not same");
                    }
                }
                else
                {
                    out.print("<br> Account number is wrong");
                }
                out.println(" ");
                
            }
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>