<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="展示.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class = "caroursel poster-main" data-setting = '{
	"width":1000,
	"height":270,
	"posterWidth":640,
	"posterHeight":270,
	"scale":0.8,
	"dealy":"2000",
	"algin":"middle"
}'>
	<ul class = "poster-list">
		<li class = "poster-item"><img src="image/shitu/护士5.jpg" width= "100%" height="100%"/></li>
		<li class = "poster-item"><img src="image/shitu/医院4.jpg" width = "100%" height="100%"></li>
		<li class = "poster-item"><img src="image/shitu/医院5.jpg" width = "100%" height="100%"></li>
    

		
	</ul>
	<div class = "poster-btn poster-prev-btn"></div>
	<div class = "poster-btn poster-next-btn"></div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/jquery.carousel.js"></script>
<script>
    Caroursel.init($('.caroursel'))
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

