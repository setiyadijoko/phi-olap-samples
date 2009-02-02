<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
	jdbcDriver="com.mysql.jdbc.Driver" 
	jdbcUrl="jdbc:mysql://localhost/phi_minimart_dw?user=root&password=" 
	catalogUri="/WEB-INF/queries/PHI.xml">
select
  {[Measures].[Total Penjualan], [Measures].[Total Biaya], [Measures].[Total Modal], [Measures].[Untung Bersih]} ON COLUMNS,
  {[Karyawan].[Semua Karyawan]} ON rows
from Sales
</jp:mondrianQuery>

<c:set var="title01" scope="session">PHI-Minimart - Cube Penjualan</c:set>