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
       .form{
          width: 40%;
        
          margin-left: 30%;
          text-align: center;
      }
      .buu{
           margin-left: 56%;   
      }
      .buu1{
         margin-top: -3.7%;
    margin-left: 71%; 
      }
      .cent{
          text-align: center;
      }
      .form-control{
          width: 23%;
    margin-left: 38%;
      }
        </style>
    </head>
    
    <body>
        <div class="jumbotron">
        <h1>View Account</h1>
        <h2>View Customer Account</h2>
       
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
         </div>
   
        <div class="cent">
       
        <form action="ViewCustomerDBMS.jsp" method="post">
            <h1>  Select:</h1> <select name="choice" class="form-control" id="sel1">
                <option value="all">All</option>
                <option value="customername">customerName</option>
                <option value="address">Address</option>
                <option value="account">Account</option>
            </select>
            <input class="form-control" style="margin-top: 2%;" type="text" name="cuschoice">
            <input type="submit" class="btn btn-success" style="margin-top: 2%; " name="b1" value="View">
        </form>
        </div>
    </body>
</html>
