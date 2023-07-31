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
        <h1>Registration</h1>
        <h2>Create New Account</h2>
       
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
            <form action="NewAccountDBMS.jsp" method="post">
            
                        <!--Account Number:-->
                        <!--<input class="form-control" type="text" name="acno"><br>-->
                    Customer Name
                  
                       <input class="form-control" type="text" name="cname">
                       <br>
                       
                        Fathers Name:
                        <input class="form-control" type="text" name="cfname">
                        <br>
                      
                        DOB:
                        <input class="form-control" type="Date" name="cdob">
                        <br>
                         Gender
                        <select class="form-control" id="sel1" name="cgender"> 
                            <option value="Select">Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                        <br>
                        Account opening Date:
                        <input class="form-control" type="Date" name="opdate">
                        <br>
                        Address:
                        <input class="form-control" type="text" name="cadd">
                        <br>
                        Customer Number:
                        <input class="form-control" type="text" name="ccontact">
                        <br> 
                        Role:
                        <select class="form-control" id="sel1" name="rrole"> 
                            <option value="Customer">Customer</option>
                            
                        </select>
                        <br>
                        Password:
                        <input class="form-control" type="text" name="password">
                        <br>
                        Security Question:
                        <select class="form-control" id="sel1" name="secques"> 
                            <option value="birthplace">Birth Place</option>
                            <option value="FirstSchool">First School</option>
                            <option value="best friend">Best Friend</option>
                        </select>
                        <br>
                         Security Answer:
                        <input class="form-control" type="text" name="secans">
                        <br>
                        
                        <input class="btn btn-success" type="submit" name="b1" value="Submit">
                        <input class="btn btn-warning" type="reset" name="b2" value="Reset">
        </form>
        </div>
    </body>
</html>
