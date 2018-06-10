<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RoleAdmin.aspx.cs" Inherits="管理员_RoleAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        角色管理</div>






                 <table class="auto-style54">
                <tr>
                    <td class="auto-style55">角色</td>
                    <td class="auto-style56">
                        <asp:ListBox ID="lstRoles" runat="server" AutoPostBack="True"></asp:ListBox>
                    </td>
                    <td class="auto-style57">用户</td>
                    <td class="auto-style58">
                        <asp:ListBox ID="lstUsers" runat="server" SelectionMode="Multiple"></asp:ListBox>
                    </td>
                    <td>
                        <asp:Button ID="btnToRole" runat="server" Text="添加到角色" OnClick="btnToRole_Click" />
                        <br />
                        <asp:Label ID="lblMsg" runat="server" style="color: #808080" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>




                    <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" OnRowDeleting="gvUsers_RowDeleting">
                <HeaderStyle BackColor ="navy" ForeColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="用户名">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server"
                                Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField CancelText="从角色中删除" HeaderText="删除" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        <br />
        <br />
        <br />
        <span class="auto-style1">数据库管理</span><br />








            <div>
    
        分类id：<asp:TextBox ID="txtCategoryId" runat="server" OnTextChanged="TextBox1_TextChanged" Width="482px">输入分类Id，只用于“修改”和“删除”</asp:TextBox>
        <br />
        <asp:Button ID="btnQueryAll" runat="server" OnClick="btnQueryAll_Click" Text="显示全部内容" Width="115px" />
        <asp:Button ID="btnFuzzy" runat="server" OnClick="btnFuzzy_Click" Text="模糊查找" Width="115px" />
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="插入" Width="111px" />
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="修改" Width="115px" />
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="删除" Width="115px" />
        <br />
        <asp:GridView ID="gvCategory" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
