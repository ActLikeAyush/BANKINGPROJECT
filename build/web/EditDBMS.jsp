
<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <%
        try
        {
            String acno=(String)session.getAttribute("login_id");
            
            String cname=request.getParameter("cname");
            String cfname=request.getParameter("cfname");
            String cdob=request.getParameter("cdob");
            String cgender=request.getParameter("cgender");
            
            String acop= request.getParameter("acop");
            
            String cadd=request.getParameter("cadd");
            String ccontact=request.getParameter("ccontact");
            
            String role=request.getParameter("rrole");
            String password=request.getParameter("password");
            String secquestion=request.getParameter("secques");
            String secanswer=request.getParameter("secans");
            
            
           String query="update account set cusname ='"+cname+"' , cusfname ='"+cfname+"' , dob ='"+cdob+"' , gender ='"+cgender+"' ,accopdate='"+acop+"' ,address ='"+cadd+"' , contactno ="+ccontact+" , password ='"+password+"' , sques ='"+secquestion+"' , sans='"+secanswer+"' where accno='"+acno+"';";
            PreparedStatement pst=con.prepareStatement(query);
                      pst.executeUpdate();
           
           out.print("<br>account created...<br>");
            
          
        }
        catch(Exception e)
        {
            out.print("not insert....."+e);
        }
        %>
    </body>
</html>
