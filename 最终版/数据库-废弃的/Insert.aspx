<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="sy1_sy1_test_7_1_Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        编号：<asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <br />
        姓名：<asp:TextBox ID="txtName" runat="server" Height="23px"></asp:TextBox>
        <br />
        密码：<asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="插入" />
        <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="返回" />
    
    </div>
    </form>
</body>
</html>
