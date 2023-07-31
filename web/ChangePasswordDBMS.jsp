<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <h1>Welcome <%=session.getAttribute("login_id") %> Login  </h1>
        Change Password DBMS Page
        <%
            String oldpassword=request.getParameter("oldpass");
            String newpassword=request.getParameter("newpass");
            String confirmpassword=request.getParameter("cnpass");
            
            out.println(oldpassword);
            out.println(newpassword);
            out.println(confirmpassword);
            
            try
            {
                String passchagequery="select * from account where accno='"+session.getAttribute("login_id")+"';";
                Statement stm=con.createStatement();
                ResultSet rs = stm.executeQuery(passchagequery);
                int count=0;
                while(rs.next())
                {
                    //out.println(rs.getString(10));
                    if(oldpassword.equals(rs.getString(10)))
                    {
                        count++;
                    }
                    
                }
                if(count>0)
                {
                    out.print("old password match");
                    if(newpassword.equals(confirmpassword))
                    {
                      out.println("old and new password are same");  
                      
                      String updatepasswordquery="update account set password='"+newpassword+"' where accno='"+session.getAttribute("login_id")+"';";
                      PreparedStatement pst=con.prepareStatement(updatepasswordquery);
                      pst.executeUpdate();
                      out.println("Your Password is Changed ");
                      out.println("<a href=Login.jsp>Now Login </a>");
                      
                    }
                    else
                    {
                        out.println("old and new password are not same");
                    }
                }
                else
                {
                    out.print("old password not match");
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
