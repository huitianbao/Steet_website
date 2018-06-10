<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WareHouse.aspx.cs" Inherits="WareHouse" %>

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
        Please input 仓库简码<br />
        如 FY<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
        <br />
        <asp:GridView ID="gvWareHouse" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="仓库名称" HeaderText="仓库名称" SortExpression="仓库名称" />
                <asp:BoundField DataField="联系方式" HeaderText="联系方式" SortExpression="联系方式" />
                <asp:BoundField DataField="简称" HeaderText="简称" SortExpression="简称" />
                <asp:BoundField DataField="简码" HeaderText="简码" SortExpression="简码" />
            </Columns>
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
        <br />
        <asp:LinqDataSource ID="ldsWareHouse" runat="server" ContextTypeName="FlapperDataContext" EntityTypeName="" TableName="Table">
        </asp:LinqDataSource>
    
    </div>
    </form>
</body>
</html>
