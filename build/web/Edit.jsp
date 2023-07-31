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
       .form{
          width: 40%;
        
          margin-left: 30%;
          text-align: center;
      }
            
        </style>
    </head>
    
    <body>
        <%
                    String name = "";
                    String fname = "";
                    String dob ="";
                    String gender = "";
                    String DoA = "";
                    String address = "";
                    String phNo = "";
                    String role = "";
                    String pass= "";
                    String passQ = "";
                    String passA = "";
        try
        {
        String customerprofilequery="select * from account where accno='"+session.getAttribute("login_id")+"';";
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(customerprofilequery);
                
                
                while(rs.next())
                {
//                    String Acc = rs.getString(1);
                     name = rs.getString(2);
                     fname = rs.getString(3);
                     dob = rs.getString(4);
                     gender = rs.getString(5);
                     DoA = rs.getString(6);
                     address = rs.getString(7);
                     phNo = rs.getString(8);
                     role = rs.getString(9);
                     pass= rs.getString(10);
                     passQ = rs.getString(11);
                     passA = rs.getString(12);
                    
                    
                    
                    
                    
                }
            }
            catch(Exception E)
            {
                out.println(E);
            }
                
                
        %>
        <div class="jumbotron">
        <h1>Registration</h1>
        <h2>EDIT Account</h2>
        </div>
        <div class="form">
            <form action="EditDBMS.jsp" method="post">
            
                        <!--Account Number:-->
                        <!--<input class="form-control" type="text" name="acno"><br>-->
                    Customer Name
                  
                       <input class="form-control" type="text" name="cname" value="<%=name%>">
                       <br>
                       
                        Fathers Name:
                        <input class="form-control" type="text" name="cfname" value="<%=fname%>">
                        <br>
                      
                        DOB:
                        <input class="form-control" type="Date" name="cdob" value="<%=dob%>">
                        <br>
                         Gender
                        <select class="form-control" id="sel1" name="cgender" value="<%=gender%>"> 
                            <option value="Select">Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                        <br>
                         Date Of account opening:
                        <input class="form-control" type="Date" name="acop" value="<%=DoA%>">
                        <br>
                        Address:
                        <input class="form-control" type="text" name="cadd" value="<%=address%>">
                        <br>
                        Customer Number:
                        <input class="form-control" type="text" name="ccontact" value="<%=phNo%>">
                        <br> 
                        Password:
                        <input class="form-control" type="text" name="password" value="<%=pass%>">
                        <br>
                        Security Question:
                        <select class="form-control" id="sel1" name="secques" value="<%=passQ%>"> 
                            <option value="birthplace">Birth Place</option>
                            <option value="FirstSchool">First School</option>
                            <option value="best friend">Best Friend</option>
                        </select>
                        <br>
                         Security Answer:
                        <input class="form-control" type="text" name="secans" value="<%=passA%>">
                        <br>
                        
                        <input class="btn btn-success" type="submit" name="b1" value="Submit">
                        <input class="btn btn-warning" type="reset" name="b2" value="Reset">
        </form>
        </div>
    </body>
</html>
