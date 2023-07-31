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
      a{
          
    padding: 50px 20px;
    /*border-color: red;*/      
  background-color:#3287f4;
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
      }
      .buu1{
             
    margin-left: 83%;
    margin-top: -2%;
}
.buu2{
    margin-left: 66%;
    margin-top: -3%;
}
  </style>
    </head>
    <body>
        
         <div class="jumbotron">
        <h1>WelCome to Admin <%=session.getAttribute("login_id")%> Login</h1>
        <h2>Account Holder Name : <%=session.getAttribute("login_id")%></h2>
        <div class="buu1">
        <form action="LogOut.jsp" method="post">
            <input class="btn btn-primary" type="submit" value="LogOut" name="b1">
       </form>
        </div>
        <div class="buu2">
        <form action="AdminHome.jsp" method="post">
           <input class="btn btn-primary" type="submit" value="Home" name="b1">
       </form>
            </div>
        
       
         </div>
        
        <div class="container">
            <h2>Select any option </h2>
        <h3>
            <a href="NewAccount.jsp">New<br>Account</a>
            <!--<a href="CancelStatement.jsp">Customer<br>Statement</a>-->
            <a href="ViewCustomer.jsp">View<br>Customer</a>
            <a href="DeleteCustomer.jsp">Delete<br>Customer</a>
            <a href="UpdateCustomer.jsp">Update<br>Customer</a>
            <a href="ViewStatement.jsp">View<br>Statement</a><br>
            <a href="resetPasword.jsp">Customer<br>reset Password</a>
            <a href="ChangePasword.jsp">Customer<br>Change Password</a>
            <a href="ChangePasword.jsp">Admin<br>change Password</a><br>
            <a href="UpdateStatement.jsp">Update<br>Statement</a>
            <a href="CancelStatement.jsp">Cancel<br>Statement</a>
            <a href="adminFundTransfer.jsp">Fund<br>Transfer</a>
            <a href="CashDeposite.jsp">Cash<br>Deposit</a>
            <a href="CashWithdraw.jsp">Cash<br>Withdraw</a>
            <a href="Logout.jsp">LogOut<br>.</a>
            
            
            
        </h3>
        </div>
    </body>
</html>
