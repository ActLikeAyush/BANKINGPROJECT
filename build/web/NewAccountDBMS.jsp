<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <%
        try
        {
            String acno="";
          
            String accountname="A00";
            int accountnum=0;
           
            try
            {
                String ss="";
                String query="select * from account";
                 Statement stm=con.createStatement();
                ResultSet rs = stm.executeQuery(query);
                while(rs.next())
                {
                ss=rs.getString(1);
                
                } 
             int l =ss.length();
             String account="";
             account = ss.substring(1,l);
             
             accountnum=Integer.parseInt(account);
             accountnum +=1;
             acno = accountname+accountnum;
       
            }
            catch(Exception E)
            {
             out.print(E);
            }
           
              
                
         

//                
//                String getLastAccountQuery = "SELECT MAX(accno) FROM account";
//                Statement getLastAccountStmt = con.createStatement();
//                ResultSet rs = getLastAccountStmt.executeQuery(getLastAccountQuery);
//                
//                String lastAccountNumber = "A000"; 
//                int nextAccountNumber = 1;
//                
//                if (rs.next() && rs.getString(1) != null) {
//                    lastAccountNumber = rs.getString(1);
//                    
//                    nextAccountNumber = Integer.parseInt(lastAccountNumber.substring(1)) + 1;
//                }
//                
//               
//                acno = String.format("A%03d", nextAccountNumber);
//                out.println(acno);
//                
//                
//            }
//            catch(Exception E)
//            {
//                out.println("auto genrate :   "+E);
//            }
//            
//            
//            
//            
//            
//            
//            
//            
//            
            
            
            
            
            
//            String aa="A00";
//            String acno=aa+1;
//            out.println(acno);
//            String acno=request.getParameter("acno");
            String cname=request.getParameter("cname");
            String cfname=request.getParameter("cfname");
            String cdob=request.getParameter("cdob");
            String cgender=request.getParameter("cgender");
            
            String opdate=request.getParameter("opdate");
            String cadd=request.getParameter("cadd");
            String ccontact=request.getParameter("ccontact");
            
            String role=request.getParameter("rrole");
            String password=request.getParameter("password");
            String secquestion=request.getParameter("secques");
            String secanswer=request.getParameter("secans");
            
            String accountinsertquery="insert into account values(?,?,?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement pst1=con.prepareStatement(accountinsertquery);
            
            pst1.setString(1,acno);
            pst1.setString(2,cname);
            pst1.setString(3,cfname);
            pst1.setString(4,cdob);
            pst1.setString(5,cgender);
            pst1.setString(6,opdate);
            pst1.setString(7,cadd);
            pst1.setInt(8,Integer.parseInt(ccontact));
            pst1.setString(9,role);
            pst1.setString(10,password);
            pst1.setString(11,secquestion);
            pst1.setString(12,secquestion);
            
            pst1.executeUpdate();
            out.print("<br>account created...<br>");
            
            String customertable="create table "+acno+"( accountno varchar(20), ref varchar(20), dotrons varchar(20), transid varchar(20), depamount varchar(20), wdrwamount varchar(20), netbal int);";
            PreparedStatement pst2=con.prepareStatement(customertable);
            pst2.executeUpdate();
            out.print("account created in table"+acno);
        }
        catch(Exception e)
        {
            out.print("not insert....."+e);
        }
        %>
    </body>
</html>
