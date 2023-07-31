
<%@include file="DBCON.jsp" %>

<html>
    
    <body>
    <%
     try
     {  
        // -------bank-----------------------
            int lastbal=0;
            String viewquerylast="select * from transactionbank";
            Statement stmt1=con.createStatement();
            ResultSet rs2 = stmt1.executeQuery(viewquerylast);
            
            while(rs2.next())
            {
                lastbal=rs2.getInt(7);
            }
            //out.println(lastbal);

            
            
            
           String accno=request.getParameter("accno");
           String refname=request.getParameter("refname");
           String dot=request.getParameter("dot");
           String trid=request.getParameter("trid");
           int wthamount=Integer.parseInt(request.getParameter("wthamt")); 
//           int netbalance=Integer.parseInt(request.getParameter("netbal"));
           
           String wthinsertquery = "insert into transactionbank values(?,?,?,?,?,?,?);";
           
           PreparedStatement pst1= con.prepareStatement(wthinsertquery);
           
           pst1.setString(1,accno);
           pst1.setString(2,refname);
           pst1.setString(3,dot);
           pst1.setString(4,trid);
           pst1.setInt(5,0);
           pst1.setInt(6,wthamount);
           pst1.setInt(7,lastbal-wthamount);
           
           pst1.executeUpdate();
          
           out.println("transaction Success cash withdraw<br>"); 
            out.println("<br>current balance is: "+lastbal);
            out.println("<br>transaction Success cash withdraw");
            
       //-----------------customer-----------------
            
            int lastbalcustomer=0;
            String viewquerylastcustomer="select * from "+accno;
            Statement stmt2=con.createStatement();
            ResultSet rs3 = stmt2.executeQuery(viewquerylastcustomer);
            
            while(rs3.next())
            {
                lastbalcustomer=rs3.getInt(7);
            }
            //out.println(lastbal);

            
           
           String wthinsertquerycustomer = "insert into "+accno+" values(?,?,?,?,?,?,?);";
           
           PreparedStatement pst2= con.prepareStatement(wthinsertquerycustomer);
           
           pst2.setString(1,accno);
           pst2.setString(2,refname);
           pst2.setString(3,dot);
           pst2.setString(4,trid);
           pst2.setInt(5,0);
           pst2.setInt(6,wthamount);
           pst2.setInt(7,(lastbalcustomer-wthamount));
           
           int aa=lastbalcustomer-wthamount;
           pst2.executeUpdate();
           
           
           
           //num to char convert
           
           
             int num = aa;
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
              // Print the amount in words
              out.println(" <br> Amount withdrow in words: " + amountInWords.trim() + "Only");
           
           
           
           
           
           
           
           
           
           
          
           out.println("transaction Success cash withdraw from account : <br>"+accno); 
            out.println("<br>current balance is: "+aa);
            out.println("<br>transaction Success cash withdraw from account: "+accno);
     }
     catch(Exception e)
     {
            out.println("transaction Failed cash not withdraw<br>"+e);
     }
     %>
    </body>
</html>
