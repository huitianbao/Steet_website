<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding: inherit; overflow: auto; font-style: normal">
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 数据管理页面<br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>材料管理</td>
                <td>仓库管理</td>
                <td>牌号管理</td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Databaseoperation/insert/InsertHotRolling.aspx">插入数据</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Databaseoperation/insert/InsertWare.aspx">插入数据</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Databaseoperation/insert/InsertFlapper.aspx">插入数据</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Databaseoperation/update/UpdateHotRolling.aspx">修改数据</asp:HyperLink>
                </td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Databaseoperation/update/UpdateWare.aspx">修改数据</asp:HyperLink>
                </td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Databaseoperation/update/UpdateFlapper.aspx">修改数据</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Databaseoperation/delete/DeleteHotRolling.aspx">删除数据</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Databaseoperation/delete/DeleteWare.aspx">删除数据</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Databaseoperation/delete/DeleteFlapper.aspx">删除数据</asp:HyperLink>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;<br />
        <br />
&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:DropDownList ID="ddl_Hot" runat="server" OnSelectedIndexChanged="ddl_Hot_SelectedIndexChanged">
                        <asp:ListItem>材料管理</asp:ListItem>
                        <asp:ListItem>插入数据</asp:ListItem>
                        <asp:ListItem>修改数据</asp:ListItem>
                        <asp:ListItem>删除数据</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl_ware" runat="server" OnSelectedIndexChanged="ddl_ware_SelectedIndexChanged">
                        <asp:ListItem>仓库管理</asp:ListItem>
                        <asp:ListItem>插入数据</asp:ListItem>
                        <asp:ListItem>修改数据</asp:ListItem>
                        <asp:ListItem>删除数据</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl_flapper" runat="server" OnSelectedIndexChanged="ddl_flapper_SelectedIndexChanged">
                        <asp:ListItem>牌号管理</asp:ListItem>
                        <asp:ListItem>插入数据</asp:ListItem>
                        <asp:ListItem>修改数据</asp:ListItem>
                        <asp:ListItem>删除数据</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;
        <br />
    
    </div>
    </form>
</body>
</html>
