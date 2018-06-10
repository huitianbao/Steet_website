<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertHotRolling.aspx.cs" Inherits="Databaseoperation_InsertHotRolling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 305px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 34px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">1.插入新HotRolling的数据<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">id&nbsp;：<asp:TextBox ID="tb_inseret_hot_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">品名：<asp:TextBox ID="tb_inseret_hot_name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">规格：<asp:TextBox ID="tb_inseret_hot_guige" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">牌号：<asp:TextBox ID="tb_inseret_hot_num" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="提交" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="显示数据" />
                    </td>
                </tr>
            </table>

    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="FlapperDataContext" EntityTypeName="" TableName="HotRolling">
        </asp:LinqDataSource>
    </form>
</body>
</html>
