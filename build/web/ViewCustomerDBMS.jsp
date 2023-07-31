<%@include file="DBCON.jsp"%>
<%@include file="ViewCustomer.jsp" %>
<html>
    <head>
        <style>
            div{
                text-align: center;
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <div>
        <%
        try
        {
            String CustomerViewquery="";
            String choice=request.getParameter("choice");
            
            if(choice.equalsIgnoreCase("customername"))
            {
                String cn=request.getParameter("cuschoice");
                CustomerViewquery="select * from account where cusname='"+cn+"'";
            }
            else if(choice.equalsIgnoreCase("address"))
            {
                String cn=request.getParameter("cuschoice");
                CustomerViewquery="select * from account where address='"+cn+"'";
            }
            
            else if(choice.equalsIgnoreCase("Account"))
            {
                String cn=request.getParameter("cuschoice");
                CustomerViewquery="select * from account where accno='"+cn+"'";
            }
            
            else
            {
             CustomerViewquery="select * from account";
           }
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
                out.println(" "+rs1.getString(7));
                out.println(" "+rs1.getString(8));
                out.println("<br>");
            }
        }
        catch(Exception e)
        {
            out.println("not here... "+e);
        }
        
        %>
      
        <a href="UpdateCustomer.jsp">Update</a>
        <a href="DeleteCustomer.jsp">Delete</a>
        <a href="ActivateAccount.jsp">Activate</a>
        <a href="DeactivateAccount.jsp">Deactivate</a>
     
         </div>
<!--                <option value="Update">Update</option>
                <option value="Delete">DELETE</option>
                <option value="Activate">ACTIVATE</option>
                <option value="Deactivate">DEACTIVATE</option>-->
            </select>
    </body>
</html>