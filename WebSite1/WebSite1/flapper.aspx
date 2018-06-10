<%@ Page Language="C#" AutoEventWireup="true" CodeFile="flapper.aspx.cs" Inherits="flapper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            this is flapper&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            <br />
            号牌查询页<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="请请输入要查找的牌号"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server">请输入牌号如 SPCC</asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" BorderStyle="Ridge" ForeColor="Blue" Text="牌号查找" />
            <br />
            <br />
            <br />
            <asp:LinqDataSource ID="LinqDataSource_flapper" runat="server">
            </asp:LinqDataSource>
            <br />
            <asp:GridView ID="GridView_flapper" runat="server" DataSourceID="LinqDataSource_flapper">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
