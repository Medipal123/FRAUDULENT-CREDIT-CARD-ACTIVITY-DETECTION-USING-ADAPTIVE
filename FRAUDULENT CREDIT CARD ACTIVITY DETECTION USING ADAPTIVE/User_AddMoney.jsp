<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Money</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #FF0000;
}
.style3 {color: #333333}
.style4 {color: #CC6600}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 align="center"><a href="index.html" class="style1">FRAUDULENT CREDIT CARD ACTIVITY DETECTION USING ADAPTIVE BOOSTING AND AGGREGATE VOTING</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.jsp"><span>Bank Admin</span></a></li>
          <li><a href="EcommerceLogin.jsp"><span>Ecommerce</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="#"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="285" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="285" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="285" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article"> 
          <h2 class="style4" style="color:#CC6600">Adding Money To User <span class="style3" style=" color:#FF0066"><%=(String)application.getAttribute("uname")%></span>'s Bank Account..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
						<%
		  	String user=(String)application.getAttribute("uname");
			String accno="";
		    String sql="SELECT acc_no FROM userbankaccount where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
					accno=rs.getString(1);
					
			}
		  
		  
		  
		  %>
                    <form action="User_AddMoneyStatus.jsp" method="post" >
                      <span class="style48">
                      <label for="name"><span class="style3">Bank Account Number </span></label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="accno" value="<%=accno%>" readonly/>
                      </p>
                      <span class="style50">
                      <label for="amount"><span class="style3">Amount (required)</span></label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="amount" class="text" />
                      </p>
                      <span class="style50">
                      <label for="email"></label>
                      </span>
                      <p class="style48"><br />
                          <input name="submit" type="submit" value="Add Money" />
                      </p>
                      
		<p align="left" class="style22">&nbsp;</p>
		<p align="left" class="style22"><a href="User_ManageBankAccount.jsp" class="style11">Back</a></p>
                    </form>
					
					
					
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
           				  <li><a href="UserMain.jsp">Home</a></li>							  
          				  <li><a href="UserLogin.jsp">Logout </a></li>
			
            
          </ul>
        </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
