<%@page import="java.util.*" %>
<html>
    <head>
        <style>
            table{
                text-align: center;
            }
            .a{
                text-align: center;
            }
        </style>
    </head>
    <body bgcolor="skyblue">
         <%!Random rndm;%>
        <% rndm = new Random(); %>
       
        <br>
        <div class="a">
        <h1> Customer Fund Transfer</h1>
        
         <h2>Welcome</h2>
        <h2>Account Number: <%=session.getAttribute("login_id")%></h2>
        <h2>Name: <%=session.getAttribute("Acc_name")%></h2>
        <form action="LogOut.jsp" method="post">
           <input type="submit" value="LogOut" name="b1">
       </form>
        </div>
        <form action="CustomerFundTransferDBMS.jsp" method="post">
            <table>
                <tr>
                    <td>Account Name: </td>
                    <td>
                        <input type="text" name="accno">
                    </td>
                </tr>
                 <tr>
                     <td>Reference: </td>
                    <td>
                        <input type="text" name="refname" value="<%=session.getAttribute("login_id")%>">
                    </td>
                </tr>
                 <tr>
                    <td>Date to Transaction: </td>
                    <td>
                        <input type="text" name="dot">
                    </td>
                </tr>
                 <tr>
                    <td>Transaction ID: </td>
                    <td>
                        <input type="text" name="trid" value="<%=rndm.nextInt()%>">
                    </td>
                </tr>
<!--                <tr>
                    <td>New balance: </td>
                    <td>
                        <input type="text" name="netbal">
                    </td>
                </tr>-->
                 <tr>
                    <td>Transfer Amount: </td>
                    <td>
                        <input type="text" name="depmat">
                    </td>
                </tr>
                
                 <tr>
                     <td>
                         <input type="submit" name="b1" value="Deposit">
                     </td>
                    <td>
                        <input type="reset" name="b2" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
