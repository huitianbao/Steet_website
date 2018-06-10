<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="没有可显示的数据记录。">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="品名" HeaderText="品名" SortExpression="品名" />
                <asp:BoundField DataField="规格" HeaderText="规格" SortExpression="规格" />
                <asp:BoundField DataField="牌号" HeaderText="牌号" SortExpression="牌号" />
                <asp:BoundField DataField="产地" HeaderText="产地" SortExpression="产地" />
                <asp:BoundField DataField="过磅价格" HeaderText="过磅价格" SortExpression="过磅价格" />
                <asp:BoundField DataField="理算价格" HeaderText="理算价格" SortExpression="理算价格" />
                <asp:BoundField DataField="地域/仓库" HeaderText="地域/仓库" SortExpression="地域/仓库" />
                <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [TableHotrolling]"></asp:SqlDataSource>
    </form>
</body>
</html>
