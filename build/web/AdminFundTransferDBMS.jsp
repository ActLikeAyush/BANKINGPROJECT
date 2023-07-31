 <%@include file="DBCON.jsp" %>
<html>
    <body>
      
        
       <%
       try
       {
//           String accno=request.getParameter("accno");
//           String ref=request.getParameter("refname");
//           out.println(accno+" "+ref);
           //for bank
           String accn=request.getParameter("refname");
           int lastbal=0;
           String viewquerylast="select * from "+accn;
           Statement stmt1=con.createStatement();
           ResultSet rs2=stmt1.executeQuery(viewquerylast);
           
           while(rs2.next())
           {
               lastbal=rs2.getInt(7);
           }
           
           
           String accno=request.getParameter("accno");
           String refname=request.getParameter("refname");
           String dot=request.getParameter("dot");
           String trid=request.getParameter("trid");
           int depamount=Integer.parseInt(request.getParameter("depamt"));

           
           String depsitequery = "insert into "+refname+" values(?,?,?,?,?,?,?);";
           
           PreparedStatement pst1= con.prepareStatement(depsitequery);
           
           pst1.setString(1 ,refname);
           pst1.setString(2,accno);
           pst1.setString(3,dot);
           pst1.setString(4,trid);
           pst1.setInt(5,0);
           pst1.setInt(6,depamount);
           pst1.setInt(7,(lastbal-depamount));
           
           pst1.executeUpdate();
           
           
           out.println("Fund transfer from "+refname+"Successfuly");
           
           //for customer
           
          int lastbalcustomer=0;
           String viewquerylastcustomer="select * from "+accno;
           Statement stmt2=con.createStatement();
           ResultSet rs3=stmt2.executeQuery(viewquerylastcustomer);
           
           while(rs3.next())
           {
               lastbal=rs3.getInt(7);
           }
           
           
           String depsitequerycustomer = "insert into "+accno+" values(?,?,?,?,?,?,?);";
           
           PreparedStatement pst2= con.prepareStatement(depsitequerycustomer);
           
           pst2.setString(1,accno);
           pst2.setString(2,refname);
           pst2.setString(3,dot);
           pst2.setString(4,trid);
           pst2.setInt(5,depamount);
           pst2.setInt(6,0);
           pst2.setInt(7,(lastbal+depamount));
           
           pst2.executeUpdate();
           
           out.print("acc:  "+(lastbal+depamount));
           
           
           int num = lastbal+depamount;
              String arr[] = {"Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
              String[] tensArr = {"", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"};
              String[] teensArr = {"", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"};
              String[] thousandsArr = {"", "Thousand", "Lakh", "Crore", "Arab", "Kharab", "Neel", "Padma", "Shankh"};

              String amountInWords = "";
              int thousandsIndex = 0;

              if (num == 0) {
                  amountInWords = arr[0] + " Rupees";  // Zero case
              } else {
                  while (num > 0) {
                      int part = num % 100;
                      if (part != 0) {
                          String partInWords = "";
                          if (part >= 10 && part <= 19) {
                              partInWords += teensArr[part - 10] + " ";
                              part = 0;
                          } else {
                              partInWords += tensArr[part / 10] + " ";
                              part %= 10;
                          }
                          if (part > 0) {
                              partInWords += arr[part] + " ";
                          }

                          amountInWords = partInWords + thousandsArr[thousandsIndex] + " " + amountInWords;
                      }

                      thousandsIndex++;
                      num /= 100;
                  }
              }
              // Print the amount in word
              out.println(" <br> Amount withdrow in words: " + amountInWords.trim() + "Only");
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           out.println("Cash Deposite Successfully in Customer account : "+accno+"<br>");
       }
       catch(Exception e)
       {
           out.print("not done"+e);
       }
       %>
    </body>
</html>
