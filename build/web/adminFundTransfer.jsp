<%@page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat" %>

<html>
    <head>
        <style>
            table{
                text-align: center;
            }
        </style>
    </head>
    <body bgcolor="skyblue">
         <%!Random rndm;%>
        <% rndm = new Random(); %>
        Welcome <%=session.getAttribute("login_id")%> <br>
        <h1 align="center"> Admin Fund Transfer</h1>
        <form action="AdminFundTransferDBMS.jsp" method="post">
            <table>
                <tr>
                    <td>From Account </td>
                    <td>
                        <input type="text" name="accno">
                    </td>
                </tr>
                 <tr>
                     <td>To This Account: </td>
                    <td>
                        <input type="text" name="refname" >
                    </td>
                </tr>
                 <tr>
                    <td>Date to Transaction: </td>
                    <td>
                        <input type="text" name="dot" value="<%=java.time.LocalDate.now()%>">
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
                        <input type="text" name="depamt">
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