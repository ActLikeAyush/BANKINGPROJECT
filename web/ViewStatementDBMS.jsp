<%@include file="DBCON.jsp" %>
<%@include file="ViewStatement.jsp" %>
<html>
    
    <body>
     <% 
     try
     {
         String choice=request.getParameter("choice");
         
         String CustomerViewquery="";
         
         if(choice.equalsIgnoreCase("AccountNO"))
         {
             String cn=request.getParameter("cuschoice");
             CustomerViewquery="select * from "+cn+"";
               
         }
         
         else
         {
             
         CustomerViewquery="select * from transactionbank";
             
         }
         
//         String CustomerViewquery="select * from account";
         Statement stmt=con.createStatement();
         ResultSet rs1= stmt.executeQuery(CustomerViewquery);
         
         
         while(rs1.next())
         {
         out.println(" "+rs1.getString(1));
         out.println(" "+rs1.getString(2));
         out.println(" "+rs1.getString(3));
         out.println(" "+rs1.getString(4));
         out.println(" "+rs1.getString(5));
         out.println(" "+rs1.getString(6));
         out.println(" "+rs1.getInt(7));
         out.println("<br>");
         }
     }
     catch(Exception e)
     {
         out.print("not here   "+e);
     }
     %>
    </body>
</html>
