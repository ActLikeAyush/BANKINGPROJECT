<%@include file="DBCON.jsp" %>
<html>
    <body>
            <%
                    session.invalidate();
                    con.close();
                    response.sendRedirect("Login.jsp");
            %>
    </body>
</html>
