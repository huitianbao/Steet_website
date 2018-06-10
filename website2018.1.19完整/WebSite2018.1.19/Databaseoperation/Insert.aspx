<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="Databaseoperation_Insert" %>

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
            width: 305px;
        }
        .auto-style3 {
            width: 301px;
        }
        .auto-style4 {
            width: 315px;
        }
        .auto-style5 {
            width: 289px;
        }
        .auto-style6 {
            width: 305px;
            height: 30px;
        }
        .auto-style7 {
            width: 301px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style9 {
            width: 305px;
            height: 31px;
        }
        .auto-style10 {
            width: 301px;
            height: 31px;
        }
        .auto-style11 {
            height: 31px;
        }
        .auto-style12 {
            width: 343px;
        }
        .auto-style13 {
            width: 305px;
            height: 24px;
        }
        .auto-style14 {
            width: 301px;
            height: 24px;
        }
        .auto-style15 {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <br />
            <br />
            插入数据</div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">1.修改材料</td>
                    <td class="auto-style12">2.修改仓库</td>
                    <td>3.修改牌号</td>
                </tr>
                <tr>
                    <td class="auto-style2">id&nbsp;：<asp:TextBox ID="tb_inseret_hot_id" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">id&nbsp;&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_ware_id" runat="server"></asp:TextBox>
                    </td>
                    <td>id&nbsp;&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_paihao_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">品名：<asp:TextBox ID="tb_inseret_hot_name" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">仓库名称：<asp:TextBox ID="tb_insert_ware_name" runat="server" Width="133px"></asp:TextBox>
                    </td>
                    <td>种类&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_paihao_catagory" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">规格：<asp:TextBox ID="tb_inseret_hot_guige" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">简称&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_ware_jiancheng" runat="server"></asp:TextBox>
                    </td>
                    <td>牌号描述：<asp:TextBox ID="tb_insert_paihao_discribe" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">牌号：<asp:TextBox ID="tb_inseret_hot_num" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">简码&nbsp;&nbsp; ：<asp:TextBox ID="tb_insert_ware_jianma" runat="server"></asp:TextBox>
                    </td>
                    <td>牌号：<asp:TextBox ID="tb_insert_paihao" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
        <asp:Button ID="btn_inseret_HotRolling" runat="server" Text="提交" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style12">
        <asp:Button ID="btn_intsert_ware" runat="server" Text="提交" OnClick="btn_intsert_ware_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn_insert_update" runat="server" Text="提交" OnClick="btn_insert_update_Click" />
                    </td>
                </tr>
            </table>

        </div>
        <div>

            <br />

            修改数据
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">1.修改材料</td>
                    <td class="auto-style14">2.修改仓库</td>
                    <td class="auto-style15">3.修改牌号</td>
                </tr>
                <tr>
                    <td class="auto-style2">id&nbsp;：<asp:TextBox ID="tb_update_hot_id" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">id&nbsp;&nbsp;&nbsp; ：<asp:TextBox ID="tb_ware_update_id" runat="server"></asp:TextBox>
                    </td>
                    <td>id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ：<asp:TextBox ID="tb_update_flapper_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">品名：<asp:TextBox ID="tb_update_hot_name" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">仓库名称：<asp:TextBox ID="tb_ware_update_name" runat="server" Width="136px"></asp:TextBox>
                    </td>
                    <td>种类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ：<asp:TextBox ID="tb_update_flapper_catagory" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">规格：<asp:TextBox ID="tb_update_hot_guige" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">简称&nbsp;&nbsp; ：<asp:TextBox ID="tb_ware_update_jiancheng" runat="server"></asp:TextBox>
                    </td>
                    <td>牌号描述：<asp:TextBox ID="tb_update_flapper_discribe" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">牌号：<asp:TextBox ID="tb_update_hot_paihao" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">简码&nbsp;&nbsp; ：<asp:TextBox ID="tb_ware_update_jianma" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">牌号：<asp:TextBox ID="tb_update_paihao" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
        <asp:Button ID="btn_update_hot" runat="server" Text="提交" OnClick="btn_update_hot_Click" />
                    </td>
                    <td class="auto-style10">
        <asp:Button ID="btn_update_ware" runat="server" Text="提交" />
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="btn_update_flapper" runat="server" Text="提交" />
                    </td>
                </tr>
            </table>

            <br />
            <br />
            删除数据<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">1.修改材料</td>
                    <td class="auto-style5">2.修改仓库</td>
                    <td>3.修改牌号</td>
                </tr>
                <tr>
                    <td class="auto-style4">id&nbsp;：<asp:TextBox ID="tb_del_hot_id" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">id ：<asp:TextBox ID="tb_del_ware_id" runat="server"></asp:TextBox>
                    </td>
                    <td>id ：<asp:TextBox ID="tb_del_flapper_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

        <asp:Button ID="btn_del_hot" runat="server" Text="提交" />

                    </td>
                    <td>

        <asp:Button ID="btn_del_ware" runat="server" Text="提交" />

                    </td>
                    <td>

        <asp:Button ID="btn_del_flapper" runat="server" Text="提交" />

                    </td>
                </tr>

            </table>
            <br />
          

        </div>
  
    </form>
</body>
</html>
