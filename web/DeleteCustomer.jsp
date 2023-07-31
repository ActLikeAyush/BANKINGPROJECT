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
         margin-top: -3.2%;
    margin-left: 71%; 
      }
      
        </style>
    </head>
    
    <body>
        <div class="jumbotron">
        <h1>Delete Customer</h1>
        <h2>Delete any Customer</h2>
        
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
        <div class="form">
            <form action="DeleteCustomerDBMS.jsp" method="post">
            
                        Account Number:
                        <input class="form-control" type="text" name="acno"><br>
                   
                        
                        <input class="btn btn-danger" type="submit" name="b1" value="Delete">
                        <input class="btn btn-warning" type="reset" name="b2" value="Reset">
        </form>
        </div>
    </body>
</html>
