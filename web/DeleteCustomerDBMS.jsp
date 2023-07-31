<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <%
            String acc=request.getParameter("acno");
            //out.println(acc);
            String query="Select * from account";
            
           Statement st=con.createStatement();
           st.executeUpdate("DELETE FROM account WHERE accno='"+acc+"';");
           out.print("Account deleted");
            
        %>
        <form action="AdminHome.jsp" method="post">
           <input type="submit" value="Home" name="b1">
       </form>
    </body>
</html>
