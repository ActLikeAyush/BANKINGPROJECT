<%@page import="java.util.*" %>
<html>
    
    <body bgcolor="skyblue">
        <%!Random rndm;%>
        <% rndm = new Random(); %>
        <h1 align="center">Transaction for Customer Cash withdraw</h1>
        <form action="CashWithdrawDBMS.jsp" method="post">
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
                        <input type="text" name="refname">
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
                    <td>Withdraw Amount: </td>
                    <td>
                        <input type="text" name="wthamt">
                    </td>
                </tr>
                
                 <tr>
                     <td>
                         <input type="submit" name="b1" value="Wthdraw">
                     </td>
                    <td>
                        <input type="reset" name="b2" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
