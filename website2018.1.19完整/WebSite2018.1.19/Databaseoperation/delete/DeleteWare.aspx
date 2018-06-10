<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteWare.aspx.cs" Inherits="Databaseoperation_delete_DeleteWare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style5 {
            width: 289px;
        }
        .auto-style1 {
            width: 100%;
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
                    <td class="auto-style5" colspan="2">2.修改仓库&nbsp;&nbsp;&nbsp; 
                        </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">id ：<asp:TextBox ID="tb_del_ware_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

        <asp:Button ID="btn_del_ware" runat="server" Text="提交" OnClick="btn_del_ware_Click" />

                    </td>
                    <td>

                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="显示数据" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </td>
                </tr>

            </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="仓库名称" HeaderText="仓库名称" SortExpression="仓库名称" />
                <asp:BoundField DataField="联系方式" HeaderText="联系方式" SortExpression="联系方式" />
                <asp:BoundField DataField="简称" HeaderText="简称" SortExpression="简称" />
                <asp:BoundField DataField="简码" HeaderText="简码" SortExpression="简码" />
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
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="FlapperDataContext" EntityTypeName="" TableName="Table">
        </asp:LinqDataSource>
    </form>
</body>
</html>
