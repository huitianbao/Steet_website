<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <br />
        <br />
        <asp:LinqDataSource ID="lds" runat="server" ContextTypeName="DatabaseDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="TableFlapper">
        </asp:LinqDataSource>
        <br />
        <br />
        <asp:GridView ID="gv_flapper" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="lds">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="牌号" HeaderText="牌号" SortExpression="牌号" />
                <asp:BoundField DataField="种类" HeaderText="种类" SortExpression="种类" />
                <asp:BoundField DataField="牌号描述" HeaderText="牌号描述" SortExpression="牌号描述" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="选择" />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
