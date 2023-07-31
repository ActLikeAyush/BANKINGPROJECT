<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
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
      #ii{
          
              margin-left: 90%;
    margin-top: -5%;
      }
      #ii1{
             border: 2px solid #9999fd;
    text-align: center;
    font-size: 300%;
    padding: 5%;
}
      
  </style>
    </head>
    <body>
        <div class="jumbotron">
            <h1>Welcome to bank.....</h1>
            <p>Customer  Welcome  <%=session.getAttribute("login_id")%> Customer Profile 
            Name: <%=session.getAttribute("Acc_name")%></p>
            </div>
        
       
        <%
        String date="";
        String name="";
            try
            {
               
                String namequery="select * from account where accno='"+session.getAttribute("login_id")+"';";
                
                Statement stm=con.createStatement();
                ResultSet rs = stm.executeQuery(namequery);
                int count=0;
                while(rs.next())
                {
                name=rs.getString(2);
                date=rs.getString(4);
                }
                
            
            }
            catch(Exception E)
            {
                out.print(E);
            }
            session.setAttribute("Acc_dob", date);
            session.setAttribute("Acc_name",name);
        %>
        
      
       <form action="LogOut.jsp" method="post">
           <input type="submit" class="btn btn-primary" id="ii" value="LogOut" name="b1">
       </form>
       
       <%
       
         
         
    LocalDateTime myDateObj = LocalDateTime.now();  
      
    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
    
    String formattedDate = myDateObj.format(myFormatObj);  
    out.println("Today's Date: "+formattedDate);  
         
         
         
            if(date.equals(formattedDate))
            {
                out.print("Happy BirthDay.....");
                
            }
            
       %>
       <h3 id="ii1">
            <a href="CustomerStatement.jsp">View Statement</a><br>
            <a href="CustomerProfile.jsp">Customer Profile</a><br>
            <a href="CustomerFundTransfer.jsp">Customer Fund Transfer</a><br>
            <a href="ChangePasword.jsp">Customer Change Password</a><br>
            <a href="INFO.jsp">INFO</a><br>
        </h3>
    </body>
</html>
