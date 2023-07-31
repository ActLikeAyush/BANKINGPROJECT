<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <h1>Welcome <%=session.getAttribute("login_id") %> Login  </h1>
        Forget Password DBMS Page
        <%
            String scepassword=request.getParameter("scepass");
            String newpassword=request.getParameter("newpass");
            String confirmpassword=request.getParameter("cnpass");
            String Acc =request.getParameter("Accno");
            
            out.println(scepassword);
            out.println(newpassword);
            out.println(confirmpassword);
            out.print(Acc);
            
            try
            {
                String passchagequery="select * from account where accno='"+Acc+"';";
                Statement stm=con.createStatement();
                ResultSet rs = stm.executeQuery(passchagequery);
                int count=0;
                while(rs.next())
                {
                    //out.println(rs.getString(10));
                    if(scepassword.equals(rs.getString(12)))
                    {
                        count++;
                    }
                    
                }
                if(count>0)
                {
                    out.print("Security question match");
                    if(newpassword.equals(confirmpassword))
                    {
                      out.println("Confirm and new password are same");  
                      
                      String updatepasswordquery="update account set password='"+newpassword+"' where accno='"+Acc+"';";
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
                    out.print("Security Answer is not match");
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
