<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="manger_ChangePass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <table class="auto-style1">
            <tr>
                <td>用户名&nbsp; <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>密码 &nbsp;&nbsp; <asp:TextBox ID="tb_pass" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td&nbsp;</td>
            </tr>
            <tr>
                <td>手机号&nbsp; <asp:TextBox ID="tb_tel" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="修改" />
&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/manger/Login.aspx">返回登录</asp:HyperLink>
    
    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
