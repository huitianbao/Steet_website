<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="warehouse.aspx.cs" Inherits="warehouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="没有可显示的数据记录。">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="warehousename" HeaderText="warehousename" SortExpression="warehousename" />
        <asp:BoundField DataField="lianxi" HeaderText="lianxi" SortExpression="lianxi" />
        <asp:BoundField DataField="jiancheng" HeaderText="jiancheng" SortExpression="jiancheng" />
        <asp:BoundField DataField="jianma" HeaderText="jianma" SortExpression="jianma" />
        <asp:BoundField DataField="beizhu" HeaderText="beizhu" SortExpression="beizhu" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WarehouseDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [TableWarehouse] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TableWarehouse] ([Id], [warehousename], [lianxi], [jiancheng], [jianma], [beizhu]) VALUES (@Id, @warehousename, @lianxi, @jiancheng, @jianma, @beizhu)" ProviderName="<%$ ConnectionStrings:WarehouseDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [warehousename], [lianxi], [jiancheng], [jianma], [beizhu] FROM [TableWarehouse]" UpdateCommand="UPDATE [TableWarehouse] SET [warehousename] = @warehousename, [lianxi] = @lianxi, [jiancheng] = @jiancheng, [jianma] = @jianma, [beizhu] = @beizhu WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Int32" />
        <asp:Parameter Name="warehousename" Type="String" />
        <asp:Parameter Name="lianxi" Type="String" />
        <asp:Parameter Name="jiancheng" Type="String" />
        <asp:Parameter Name="jianma" Type="String" />
        <asp:Parameter Name="beizhu" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="warehousename" Type="String" />
        <asp:Parameter Name="lianxi" Type="String" />
        <asp:Parameter Name="jiancheng" Type="String" />
        <asp:Parameter Name="jianma" Type="String" />
        <asp:Parameter Name="beizhu" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
</p>
</asp:Content>

