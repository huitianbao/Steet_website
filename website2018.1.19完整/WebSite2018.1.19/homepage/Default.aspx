<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 532px;
        }
        .auto-style2 {
            width: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td rowspan="5">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/上海邑云logo.PNG" OnClick="ImageButton1_Click" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage/Default.aspx">首页</asp:HyperLink>
                    &nbsp;&nbsp;
                    </td>
                    <td>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/query/Flapper.aspx">牌号查询</asp:HyperLink>
                    </td>
                    <td>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/query/WareHouse.aspx">仓库查询</asp:HyperLink>
                    &nbsp;</td>
                    <td><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/query/HotRolling.aspx">材料查询</asp:HyperLink>
                    &nbsp;
                    </td>
                    <td>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/manger/Login.aspx">登录</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style2">
        <asp:TextBox ID="TextBox1" runat="server">规格 eg:2*1500*300</asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server">牌号eg:Q345E</asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
        <asp:LinqDataSource ID="ldsHotRolling" runat="server" ContextTypeName="FlapperDataContext" EntityTypeName="" TableName="HotRolling">
        </asp:LinqDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
        <asp:GridView ID="gvHotRolling" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" Width="510px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="品名" HeaderText="品名" SortExpression="品名" />
                <asp:BoundField DataField="规格" HeaderText="规格" SortExpression="规格" />
                <asp:BoundField DataField="牌号" HeaderText="牌号" SortExpression="牌号" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#33CCFF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
  
  
    </form>
</body>
</html>
