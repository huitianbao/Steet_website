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
        <br />
        <br />
        请输入规格和牌号<br />
        <asp:TextBox ID="TextBox_guige" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox_paihao" runat="server"></asp:TextBox>
        <asp:Button ID="Buttonquery" runat="server" OnClick="Buttonquery_Click" Text="Button" />
        <br />
        eg:<br />
&nbsp;&nbsp; 2*1500*300&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q345E<br />
&nbsp;&nbsp; 2*1215*2000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B480GNQR<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" EmptyDataText="没有可显示的数据记录。" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="988px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="品名" HeaderText="品名" SortExpression="品名" />
                <asp:BoundField DataField="规格" HeaderText="规格" SortExpression="规格" />
                <asp:BoundField DataField="牌号" HeaderText="牌号" SortExpression="牌号" />
                <asp:BoundField DataField="过磅价格" HeaderText="过磅价格" SortExpression="过磅价格" />
                <asp:BoundField DataField="理算价格" HeaderText="理算价格" SortExpression="理算价格" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseHottingRollingConnectionString1 %>" DeleteCommand="DELETE FROM [TableHotting] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TableHotting] ([Id], [品名], [规格], [牌号], [产地(无限制)], [过磅价格], [理算价格], [地域/仓库], [备注]) VALUES (@Id, @品名, @规格, @牌号, @column1, @过磅价格, @理算价格, @column2, @备注)" ProviderName="<%$ ConnectionStrings:DatabaseHottingRollingConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [品名], [规格], [牌号], [产地(无限制)] AS column1, [过磅价格], [理算价格], [地域/仓库] AS column2, [备注] FROM [TableHotting]" UpdateCommand="UPDATE [TableHotting] SET [品名] = @品名, [规格] = @规格, [牌号] = @牌号, [产地(无限制)] = @column1, [过磅价格] = @过磅价格, [理算价格] = @理算价格, [地域/仓库] = @column2, [备注] = @备注 WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="品名" Type="String" />
                <asp:Parameter Name="规格" Type="String" />
                <asp:Parameter Name="牌号" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="过磅价格" Type="String" />
                <asp:Parameter Name="理算价格" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="品名" Type="String" />
                <asp:Parameter Name="规格" Type="String" />
                <asp:Parameter Name="牌号" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="过磅价格" Type="String" />
                <asp:Parameter Name="理算价格" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
