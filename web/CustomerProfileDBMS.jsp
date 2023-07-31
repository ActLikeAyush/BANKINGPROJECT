<%@include file="DBCON.jsp" %>
<html>
    <head>
          <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <style>
        .jumbotron{
          text-align: center;
          background-color: powderblue;
      }
      .container{
          text-align: center;
      }
      #con{
          
      }
      .form{
          width: 40%;
        
          margin-left: 30%;
          text-align: center;
      }
         .buu{
           margin-left: 57%;   
      }
      .buu1{
         margin-top: -3.2%;
    margin-left: 71%; 
      }
      .buu11{
           margin-top: -3.2%;
    margin-left: 84%; 
      }
      .ss{
          margin-top: -7%;
          margin-left: 37%;
          font-size: 22px;
      }
  </style>
    </head>
    <body>
         <div class="jumbotron">
            <h1>Welcome to bank.....</h1>
            <p>Customer Profile  Welcome  <%=session.getAttribute("login_id")%> Customer Profile 
            Name: <%=session.getAttribute("Acc_name")%></p>
            
                    <div class="buu">
        <form action="AdminHome.jsp" method="post">
           <input type="submit" class="btn btn-primary" value="Home" name="b1">
       </form>
        </div>
        
        <div class="buu1">
        <form action="LogOut.jsp" method="post">
            <input class="btn btn-primary" type="submit" value="LogOut" name="b1">
       </form>
            </div>
            <div class="buu11">
             <form action="Edit.jsp" method="post">

        <input type="submit" name="b1" class="btn btn-primary"  value="Update">
    </form>
            </div>
            
         </div>
            
             
            
            
   
            <div class="ss">
        <%
            try
            {
                String customerprofilequery="select * from account where accno='"+session.getAttribute("login_id")+"';";
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(customerprofilequery);
                while(rs.next())
                {
                    out.println("<br><br><br>Account No. : "+rs.getString(1));
                    out.println("<br>Name: "+rs.getString(2));
                    out.println("<br>Father's Name: "+rs.getString(3));
                    out.println("<br>DOB: "+rs.getString(4));
                    out.println("<br>Gender: "+rs.getString(5));
                    out.println("<br>Date of Account Open: "+rs.getString(6));
                    session.setAttribute("acop", rs.getString(6));
                    
                    out.println("<br>City: "+rs.getString(7));
                    out.println("<br>Phone NO.  : "+rs.getString(8));
                    out.println("<br>Role: "+rs.getString(9));
                    out.println("<br>Password: "+rs.getString(10));
                    out.println("<br>Security Question: "+rs.getString(11));
                    out.println("<br>Security Answer: "+rs.getString(12));
                    out.println("<br> ");
                    
                    
                }
            }
            catch(Exception E)
            {
                out.println(E);
            }
        %>
            </div>
        
        
    </body>
</html>
