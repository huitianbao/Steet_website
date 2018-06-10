<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FuzzyQuery.aspx.cs" Inherits="sy1_sy1_test_7_1_FuzzyQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        分类名：<asp:TextBox ID="txtSearch" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="搜索" />
        <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="返回" />
        <br />
        <asp:GridView ID="gvCategory" runat="server">
        </asp:GridView>
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
