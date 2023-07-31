<%@include file="DBCON.jsp" %>
<html>
    <body>
        <%=session.getAttribute("login_id")%>
       <%
       try
       {
           //for bank
           int lastbal=0;
           String viewquerylast="select * from "+session.getAttribute("login_id");
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
           int depamount=Integer.parseInt(request.getParameter("depmat"));
//           int netbalance=Integer.parseInt(request.getParameter("netbal"));
           
           String depsitequery = "insert into "+session.getAttribute("login_id")+" values(?,?,?,?,?,?,?);";
           
           PreparedStatement pst1= con.prepareStatement(depsitequery);
           
           pst1.setString(1 ,refname);
           pst1.setString(2,accno);
           pst1.setString(3,dot);
           pst1.setString(4,trid);
           pst1.setInt(5,0);
           pst1.setInt(6,depamount);
           pst1.setInt(7,(lastbal-depamount));
           
           pst1.executeUpdate();
           
           
           out.println("Fund transfer from "+session.getAttribute("login_id")+"Successfuly");
           
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
           
           
           out.println("Cash Deposite Successfully in Customer account : "+accno+"<br>");
       }
       catch(Exception e)
       {
           out.print("not done"+e);
       }
       %>
    </body>
</html>
