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
  </style>
    </head>
    <body>
        <div class="jumbotron">
            <h1>Welcome to bank.....</h1>
            <p>  Reset Password page</p>
            </div>
        <div class="form">
            
      
      
        <br>
        <br>
        <form action="resetPasswordDBMS.jsp" method="post">
            
            Enter Account no:
            <input class="form-control" type="text" name="Accno"><br>
            
            Enter Customer name:
            <input class="form-control" type="text" name="Cname"><br>
           
            Enter New Password:
            <input class="form-control" type="text" name="newpass"><br>
            Enter Confirm Password
            <input class="form-control" type="text" name="cnpass"><br>
            <input class="btn btn-success" type="submit" name="b1" value="update">
        </form>
        
          </div>
    </body>
</html>