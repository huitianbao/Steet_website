<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Flapper.aspx.cs" Inherits="Flapper" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage/Default.aspx">首页</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/query/Flapper.aspx">牌号查询</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/query/WareHouse.aspx">仓库查询</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/query/HotRolling.aspx">材料查询</asp:HyperLink>
        <br />
        please input 牌号 如 SPCC<br />

    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" EmptyDataText="没有可显示的数据记录。" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="牌号" HeaderText="牌号" SortExpression="牌号" />
                <asp:BoundField DataField="种类" HeaderText="种类" SortExpression="种类" />
                <asp:BoundField DataField="牌号描述" HeaderText="牌号描述" SortExpression="牌号描述" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FlapperConnectionString %>" DeleteCommand="DELETE FROM [Flapper] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Flapper] ([Id], [牌号], [种类], [牌号描述]) VALUES (@Id, @牌号, @种类, @牌号描述)" ProviderName="<%$ ConnectionStrings:FlapperConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [牌号], [种类], [牌号描述] FROM [Flapper]" UpdateCommand="UPDATE [Flapper] SET [牌号] = @牌号, [种类] = @种类, [牌号描述] = @牌号描述 WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="牌号" Type="String" />
                <asp:Parameter Name="种类" Type="String" />
                <asp:Parameter Name="牌号描述" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="牌号" Type="String" />
                <asp:Parameter Name="种类" Type="String" />
                <asp:Parameter Name="牌号描述" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
