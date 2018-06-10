<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="后台管理.aspx.cs" Inherits="管理员_后台管理" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div>
    
        <span class="auto-style16">数据库管理管理员登陆</span><br />
        <asp:Login ID="Login2" runat="server" OnAuthenticate="Login2_Authenticate" DestinationPageUrl="~/管理员/后台管理.aspx">
        </asp:Login>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

