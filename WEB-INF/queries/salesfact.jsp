<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver"
jdbcUrl="jdbc:mysql://localhost/DWO_DB?user=root&password=" catalogUri="/WEB-INF/queries/salesfact.xml">
select
  {[Measures].[Amount]} ON COLUMNS,
  {([Store],[Time].[All Times],[Customer],[Product])} ON ROWS
from [salesfact]
</jp:mondrianQuery>





<c:set var="title01" scope="session">Sales Fact</c:set>
