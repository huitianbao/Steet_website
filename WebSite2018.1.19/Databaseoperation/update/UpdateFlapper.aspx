<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateFlapper.aspx.cs" Inherits="Databaseoperation_UpdateFlapper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style15 {
            height: 24px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style11 {
            height: 31px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style16 {
            height: 31px;
            width: 152px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15" colspan="2">3.修改牌号</td>
                </tr>
                <tr>
                    <td colspan="2">id&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_update_flapper_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">种类&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tb_update_flapper_catagory" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">牌号描述&nbsp; <asp:TextBox ID="tb_update_flapper_discribe" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">牌号&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_update_paihao" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Button ID="btn_update_flapper" runat="server" Text="提交" OnClick="btn_update_flapper_Click" />
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="显示数据" />
                    </td>
                </tr>
            </table>

    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="牌号" HeaderText="牌号" SortExpression="牌号" />
                <asp:BoundField DataField="种类" HeaderText="种类" SortExpression="种类" />
                <asp:BoundField DataField="牌号描述" HeaderText="牌号描述" SortExpression="牌号描述" />
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
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="FlapperDataContext" EntityTypeName="" TableName="Flapper">
        </asp:LinqDataSource>
    </form>
</body>
</html>
