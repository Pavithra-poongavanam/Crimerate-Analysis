<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.*"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bandwidth","root","root");
PreparedStatement sel=con.prepareStatement("SELECT DATE,filekey,filename,COUNT(*)Total FROM request GROUP BY filekey");
ResultSet rs=sel.executeQuery();
OutputStream out1 = response.getOutputStream();
DefaultCategoryDataset bar = new DefaultCategoryDataset();

int count=0;String filename="";
while(rs.next())
{
	count=rs.getInt("Total");
	filename=rs.getString("filename");
	bar.addValue(count,filename,filename);
}
JFreeChart BarChartObject=ChartFactory.createBarChart("File Name Based Graph","Total Request Files","Graphical Status",bar,PlotOrientation.VERTICAL,true,true,false);
response.setContentType("image/png");
ChartUtilities.writeChartAsPNG(out1, BarChartObject,  1200, 600);
%>