<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="manger_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        请登录<br />
        <br />
        思路，自己写登录的过程，建一张表<br />
        A开头表示管理员，<br />
        U开头表示普通用户<br />
        <br />
        <br />
        <br />
        用户名：<asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
        <br />
        密 码： 
        <asp:TextBox ID="tb_pass" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/manger/Register.aspx">注册</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/manger/ChangePass.aspx">忘记密码</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Height="63px" Width="327px"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
