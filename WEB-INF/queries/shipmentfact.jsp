<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver"
jdbcUrl="jdbc:mysql://localhost/DWO_DB?user=root&password=" catalogUri="/WEB-INF/queries/shipmentfact.xml">
select
  {[Measures].[Freight],[Measures].[Tax]} ON COLUMNS,
  {([Shipment])} ON ROWS
from [shipmentfact]
</jp:mondrianQuery>





<c:set var="title01" scope="session">Shipment Fact</c:set>
