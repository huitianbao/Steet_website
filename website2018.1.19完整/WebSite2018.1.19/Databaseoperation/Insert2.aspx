<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert2.aspx.cs" Inherits="Databaseoperation_Insert2" %>

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
            width: 326px;
        }
        .auto-style3 {
            width: 368px;
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
        this is insert page<br />
            插入数据<br />
        <br />
    
    </div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">1.修改材料</td>
                    <td class="auto-style3">2.修改仓库</td>
                    <td>3.修改牌号</td>
                </tr>
                <tr>
                    <td class="auto-style2">id&nbsp;：<asp:TextBox ID="tb_inseret_hot_id" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">id&nbsp;&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_ware_id" runat="server"></asp:TextBox>
                    </td>
                    <td>id&nbsp;&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_paihao_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">品名：<asp:TextBox ID="tb_inseret_hot_name" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">仓库名称：<asp:TextBox ID="tb_insert_ware_name" runat="server" Width="183px"></asp:TextBox>
                    </td>
                    <td>种类&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_paihao_catagory" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">规格：<asp:TextBox ID="tb_inseret_hot_guige" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">简称&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_ware_jiancheng" runat="server"></asp:TextBox>
                    </td>
                    <td>牌号描述：<asp:TextBox ID="tb_insert_paihao_discribe" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">牌号：<asp:TextBox ID="tb_inseret_hot_num" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">简码&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_ware_jianma" runat="server"></asp:TextBox>
                    </td>
                    <td>牌号：<asp:TextBox ID="tb_insert_paihao" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">联系方式：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
        <asp:Button ID="btn_inseret_HotRolling" runat="server" Text="提交" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style3">
        <asp:Button ID="btn_intsert_ware" runat="server" Text="提交" OnClick="btn_intsert_ware_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn_insert_update" runat="server" Text="提交" OnClick="btn_insert_update_Click" />
                    </td>
                </tr>
            </table>

        </div>
        <br />
    </form>
</body>
</html>
