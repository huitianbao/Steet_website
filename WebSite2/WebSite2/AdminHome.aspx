﻿<%@ Page Title="" Language="C#" MasterPageFile="~/RoleManager.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">	 
		<ul class="nav menu">
			<li class="active"><a href="AdminHome.aspx"><span class="glyphicon glyphicon-dashboard"></span> Admin</a></li>
			<li><a href="UserList.aspx"><span class="glyphicon glyphicon-th"></span> User List</a></li>
			<li><a href="Article.aspx"><span class="glyphicon glyphicon-stats"></span>Articles</a></li>
			<li><a href="tables.html"><span class="glyphicon glyphicon-list-alt"></span> Tables</a></li>
			<li><a href="panels.html"><span class="glyphicon glyphicon-info-sign"></span> Alerts &amp; Panels</a></li>
		
			<li role="presentation" class="divider"></li>
			<li><a href="login.html"><span class="glyphicon glyphicon-user"></span> Login Page</a></li>
		</ul>
	 <div class="attribution">Copyright @2017 <a href="http://www.cssmoban.com/" target="_blank"  ">Starrier</a> Designer <a href=" #"   target="_blank">Starrier</a></div>
	</div><!--/.sidebar-->
</asp:Content>

