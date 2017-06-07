<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>

<HTML>
    <HEAD>
        <TITLE>Customer Survey for Varieties of Categories </TITLE>
    </HEAD>

    <BODY>
        <H1>The tableName Database Table </H1>

        <% 
            Connection connection = DriverManager.getConnection
            		("jdbc:mysql://localhost:3306/SURVEY_ANALYSIS?autoReconnect=true&useSSL=false","root","admin");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from tblsurveyinfo") ; 
        %>

        <TABLE BORDER="1">
            <TR>
             
                <TH>Nick Name</TH>
                <TH>Category of Product</TH>
                <TH>Description</TH>
                <TH>Photo</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                 <TD> <%= resultset.getString(6) %></TD>
            </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>