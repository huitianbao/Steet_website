<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="flapper.aspx.cs" Inherits="flapper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        请输入号牌</p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <br />
    eg：SPCC<p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="没有可显示的数据记录。">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="牌号" HeaderText="牌号" SortExpression="牌号" />
                <asp:BoundField DataField="种类" HeaderText="种类" SortExpression="种类" />
                <asp:BoundField DataField="牌号描述" HeaderText="牌号描述" SortExpression="牌号描述" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FlapperDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [TableFlapper] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TableFlapper] ([Id], [牌号], [种类], [牌号描述]) VALUES (@Id, @牌号, @种类, @牌号描述)" SelectCommand="SELECT [Id], [牌号], [种类], [牌号描述] FROM [TableFlapper]" UpdateCommand="UPDATE [TableFlapper] SET [牌号] = @牌号, [种类] = @种类, [牌号描述] = @牌号描述 WHERE [Id] = @Id">
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
</p>
<p>
</p>
</asp:Content>

