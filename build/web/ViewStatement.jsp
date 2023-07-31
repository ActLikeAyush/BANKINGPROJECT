<html>
    
    <body>
        <form action="AdminHome.jsp" method="post">
           <input type="submit" value="Home" name="b1">
       </form>
        
        <form action="ViewStatementDBMS.jsp" method="post">
            Select: <select name="choice">
                <option value="Bank">Bank</option>
                <option value="AccountNo">customer Account No.</option>
                
            </select>
            <input type="text" name="cuschoice">
            <input type="submit" name="b1" value="View">
        </form>
    </body>
</html>
