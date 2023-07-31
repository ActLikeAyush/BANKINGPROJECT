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
            <p>Enter your id and password for login</p>
            </div>
            <div class="form">
        <form action="Check.jsp" method="post">
         
               
            <h1>Select Role</h1>
                            <select class="form-control" id="sel1" name="role"> 
                            <option value="Select">Select</option>
                            <option value="admin">Admin</option>
                            <option value="customer">Coustomer</option>
                        </select>
                     
            <br>
                
                    LogIn ID:
             
                        <input class="form-control" type="text" name="Login">
                        <br>
                  Password:
                        <input class="form-control" type="text" name="Loginpassword">
                        <br>
                        <input  class="btn btn-success" type="submit" value="LogIn" name="b1">
                  
                        <input class="btn btn-warning" type="reset" value="Reset" name="b2">
                        <br><br>
                        
                    
                 
                        <a class="btn btn-primary" href="ForgetPassword.jsp">Forget Password</a>
                   
        </form>
           
        </div>      
    </body>
</html>
