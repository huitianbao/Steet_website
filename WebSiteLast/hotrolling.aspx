<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hotrolling.aspx.cs" Inherits="hotrolling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="没有可显示的数据记录。">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="pingming" HeaderText="pingming" SortExpression="pingming" />
        <asp:BoundField DataField="guige" HeaderText="guige" SortExpression="guige" />
        <asp:BoundField DataField="paihao" HeaderText="paihao" SortExpression="paihao" />
        <asp:BoundField DataField="chandi" HeaderText="chandi" SortExpression="chandi" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotrolingDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [TableHotrolling] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TableHotrolling] ([Id], [pingming], [guige], [paihao], [chandi]) VALUES (@Id, @pingming, @guige, @paihao, @chandi)" ProviderName="<%$ ConnectionStrings:HotrolingDatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [pingming], [guige], [paihao], [chandi] FROM [TableHotrolling]" UpdateCommand="UPDATE [TableHotrolling] SET [pingming] = @pingming, [guige] = @guige, [paihao] = @paihao, [chandi] = @chandi WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Int32" />
        <asp:Parameter Name="pingming" Type="String" />
        <asp:Parameter Name="guige" Type="String" />
        <asp:Parameter Name="paihao" Type="String" />
        <asp:Parameter Name="chandi" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="pingming" Type="String" />
        <asp:Parameter Name="guige" Type="String" />
        <asp:Parameter Name="paihao" Type="String" />
        <asp:Parameter Name="chandi" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
</p>
</asp:Content>

