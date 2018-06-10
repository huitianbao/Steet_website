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
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:GridView ID="gvflapper" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="没有可显示的数据记录。">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="牌号" HeaderText="牌号" SortExpression="牌号" />
                <asp:BoundField DataField="种类" HeaderText="种类" SortExpression="种类" />
                <asp:BoundField DataField="牌号描述" HeaderText="牌号描述" SortExpression="牌号描述" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceflapper" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [TableFlapper] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TableFlapper] ([Id], [牌号], [种类], [牌号描述]) VALUES (@Id, @牌号, @种类, @牌号描述)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [牌号], [种类], [牌号描述] FROM [TableFlapper]" UpdateCommand="UPDATE [TableFlapper] SET [牌号] = @牌号, [种类] = @种类, [牌号描述] = @牌号描述 WHERE [Id] = @Id">
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
    
    </div>
    </form>
</body>
</html>
