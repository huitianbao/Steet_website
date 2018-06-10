<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Warehouse.aspx.cs" Inherits="Warehouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        eg: FY<br />
        &nbsp;&nbsp; CJ<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" EmptyDataText="没有可显示的数据记录。" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="仓库名称" HeaderText="仓库名称" SortExpression="仓库名称" />
                <asp:BoundField DataField="联系方式" HeaderText="联系方式" SortExpression="联系方式" />
                <asp:BoundField DataField="简码" HeaderText="简码" SortExpression="简码" />
                <asp:BoundField DataField="简称" HeaderText="简称" SortExpression="简称" />
                <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseWarehouseConnectionString1 %>" DeleteCommand="DELETE FROM [TableWarehouse] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TableWarehouse] ([Id], [仓库名称], [联系方式], [简码], [简称], [备注]) VALUES (@Id, @仓库名称, @联系方式, @简码, @简称, @备注)" ProviderName="<%$ ConnectionStrings:DatabaseWarehouseConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [仓库名称], [联系方式], [简码], [简称], [备注] FROM [TableWarehouse]" UpdateCommand="UPDATE [TableWarehouse] SET [仓库名称] = @仓库名称, [联系方式] = @联系方式, [简码] = @简码, [简称] = @简称, [备注] = @备注 WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="仓库名称" Type="String" />
                <asp:Parameter Name="联系方式" Type="String" />
                <asp:Parameter Name="简码" Type="String" />
                <asp:Parameter Name="简称" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="仓库名称" Type="String" />
                <asp:Parameter Name="联系方式" Type="String" />
                <asp:Parameter Name="简码" Type="String" />
                <asp:Parameter Name="简称" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
