<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <%
        int count=0;
        String role=request.getParameter("role");    
        String loginid=request.getParameter("Login");
        String password=request.getParameter("Loginpassword");
        session.setAttribute("login_id",loginid);
     
        try
        {
            String viewaccountquery="select * from account";
                 
            Statement stmt=con.createStatement();
            ResultSet rs1=stmt.executeQuery(viewaccountquery);
           
   
////             
////             
///             out.println(" "+rs1.getString(2));
            
            while(rs1.next())
            {
                
               // out.println(" "+rs1.getString(1));//account
                //out.println(" "+rs1.getString(9));//role
                //out.println(" "+rs1.getString(10));//password
                //out.println("<br>");
                
                if(role.equalsIgnoreCase(rs1.getString(9)) && loginid.equalsIgnoreCase(rs1.getString(1)) && password.equals(rs1.getString(10)))
                {
                    count++;
                }
            }
            if(count>0)
            {
                //out.println("Login Success");
                if(loginid.equals("Admin"))
                {
                    //out.println("Admin Login");
                    
                    response.sendRedirect("AdminLogin.jsp");
                             
                        
                        
                        
                }
                else
                {
                    //session.setAttribute("login_name",name);
                    //out.println("customer login");
                    response.sendRedirect("CustomerLogin.jsp");
               
                  
                }
            }
            else
            {
                
                out.println("Login Failed");
                RequestDispatcher dis=request.getRequestDispatcher("Login.jsp");
                dis.include(request, response);
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
      
        
        
        
        
//        if(role.equals("admin") && loginid.equals("ayush")&& password.equals("123"))
//        {
//            response.sendRedirect("AdminLogin.jsp");
//        }
//        else if(role.equals("customer")&&loginid.equals("bhaiyaayush")&&password.equals("123"))
//        {
//            response.sendRedirect("CustomerLogin.jsp");
//        }
//        else
//        {
//            RequestDispatcher dis=request.getRequestDispatcher("Login.jsp");
//            dis.include(request, response);
//            out.print("<br>Invalid Login Password");
//        }
        %>
       
    </body>
</html>
