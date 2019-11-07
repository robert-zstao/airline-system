<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*,"%>
<%@ page import="java.net.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<% 
request.setCharacterEncoding("UTF-8");
 String user = request.getParameter("user");
String password = request.getParameter("password");
String value=request.getParameter("radio");
String bname="";
String uname="";
String pass="";
if(value.equals("1")){
	bname="student";
	uname="stu_num";
	pass="spassword";
}else if(value.equals("2")){
	bname="teacher";
	uname="teacher_num";
	pass="tpassword";
}
/*  jdbc jdbc= new jdbc(); */
String sql= "select * from "+bname+" where "+uname+ "='"+user+"' and "+pass+"='"+password+"';";
/* ResultSet rs = jdbc.get().executeQuery(sql); */
String uid="";
String name="";
String form="";

%>