<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotRolling.aspx.cs" Inherits="HotRolling" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage/Default.aspx">首页</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/query/Flapper.aspx">牌号查询</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/query/WareHouse.aspx">仓库查询</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/query/HotRolling.aspx">材料查询</asp:HyperLink>
        <br />
        <br />
        请输入规格和牌号<br />
        规格：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        牌号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
        <br />
        eg:&nbsp; 2*1500*300<br />
&nbsp;&nbsp;&nbsp; Q345E<br />
        <asp:GridView ID="gvHotRolling" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:LinqDataSource ID="ldsHotRolling" runat="server" ContextTypeName="FlapperDataContext" EntityTypeName="" TableName="HotRolling">
        </asp:LinqDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
