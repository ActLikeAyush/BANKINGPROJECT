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
          color: white;
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
      .aa{
          border: 2px solid #5396dd;
          text-align: center;
          font-size: 40px;
      }
       #ii{
          
              margin-left: 90%;
    margin-top: -5%;
      }
  </style>
    </head>
    <body>
         <div class="jumbotron">
            <h1>Welcome to bank.....</h1>
            <p>Customer  Welcome  <%=session.getAttribute("login_id")%> Customer Profile 
            Name: <%=session.getAttribute("Acc_name")%></p>
            </div>
        <form action="LogOut.jsp" method="post">
           <input type="submit" class="btn btn-primary" id="ii" value="LogOut" name="b1">
       </form>
        
            <div class="aa">
     <%
     
        
       
        
     try
     {
            String customerstatementview="select * from "+session.getAttribute("login_id");
            Statement stmt =con.createStatement();
            ResultSet rs1=stmt.executeQuery(customerstatementview);
            
            while(rs1.next())
            {
         out.println(" "+rs1.getString(1));
         out.println(" "+rs1.getString(2));
         out.println(" "+rs1.getString(3));
         out.println(" "+rs1.getString(4));
         out.println(" "+rs1.getInt(5));
         out.println(" "+rs1.getInt(6));
         out.println(" "+rs1.getInt(7));
         out.println("<br>");
                
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
