<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1402px;
            margin-right: 21px;
        }
        .auto-style2 {
            width: 286px;
            height: 87px;
        }
        .auto-style4 {
            width: 371px;
            text-align: center;
            font-size: x-small;
        }
        .auto-style5 {
            width: 142px;
            text-align: center;
            font-family: 微软雅黑;
            color: #FFFFFF;
            font-size: x-small;
            }
        .auto-style7 {
            width: 25px;
            height: 28px;
        }
        .auto-style8 {
            width: 1404px;
            height: 46px;
            margin-bottom: 12px;
        }
        .auto-style9 {
            width: 429px;
            height: 35px;
        }
        .auto-style12 {
            height: 35px;
            text-align: center;
            background-color: #009933;
        }
        .auto-style19 {
            width: 157px;
            text-align: center;
            height: 35px;
            background-color: #009933;
        }
        .auto-style20 {
            height: 35px;
            width: 157px;
        }
        .auto-style21 {
            width: 1461px;
        }
        .auto-style22 {
            width: 930px;
            height: 384px;
            margin-left: 0px;
        }
        .auto-style23 {
            width: 1477px;
        }
        .auto-style24 {
            width: 73%;
            margin-right: 0px;
        }
        .auto-style25 {
            width: 328px;
            height: 41px;
        }
        .auto-style26 {
            width: 286px;
            height: 41px;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
            padding: 1px 4px;
        }
        .auto-style27 {
            height: 41px;
            width: 113px;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
            padding: 1px 4px;
        }
        .auto-style28 {
            height: 41px;
            width: 50px;
        }
        .auto-style29 {
            width: 96px;
            height: 41px;
            text-align: right;
            font-size: xx-small;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
            padding: 1px 4px;
        }
        .auto-style30 {
            height: 41px;
            width: 113px;
            text-align: right;
            font-size: xx-small;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
            padding: 1px 4px;
        }
        .auto-style31 {
            width: 93%;
        }
        .auto-style32 {
            width: 430px;
        }
        .auto-style33 {
            width: 430px;
            height: 44px;
        }
        .auto-style34 {
        }
        .auto-style35 {
            height: 44px;
            font-size: large;
        }
        .auto-style37 {
            width: 157px;
            height: 134px;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
        }
        .auto-style39 {
            font-size: xx-small;
        }
        .auto-style40 {
            width: 377px;
            height: 159px;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
        }
        .auto-style41 {
            width: 430px;
            height: 36px;
        }
        .auto-style42 {
            height: 36px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style44 {
            height: 36px;
        }
        .auto-style46 {
            height: 37px;
        }
        .auto-style48 {
            width: 158px;
            height: 159px;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
        }
        .auto-style49 {
            width: 430px;
            height: 159px;
        }
        .auto-style50 {
            height: 159px;
        }
        .auto-style51 {
            width: 328px;
            height: 249px;
            margin-left: 33px;
        }
        .auto-style52 {
            width: 158px;
            height: 124px;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
            margin-left: 0px;
            margin-right: 0px;
            padding: 1px 4px;
        }
        .auto-style54 {
            height: 61px;
        }
        .auto-style55 {
            width: 430px;
            height: 61px;
        }
        .auto-style56 {
            width: 377px;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
            padding: 1px 4px;
        }
        .auto-style60 {
            height: 37px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style61 {
            border-bottom-style: dotted;
            border-bottom-width: 1px;
            padding: 1px 4px;
        }
        .auto-style62 {
            width: 430px;
            height: 37px;
        }
        .auto-style63 {
            width: 430px;
            height: 134px;
        }
        .auto-style64 {
            height: 134px;
        }
        .auto-style65 {
            width: 168px;
            height: 110px;
        }
        .auto-style66 {
            width: 92%;
            height: 47px;
        }
        .auto-style68 {
            width: 1768px;
        }
        .auto-style69 {
            width: 403px;
        }
        .auto-style70 {
            width: 607px;
        }
        .auto-style71 {
            width: 1601px;
        }
        .auto-style72 {
            width: 100%;
        }
        .auto-style73 {
            width: 1016px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style72">
            <tr>
                <td class="auto-style73">&nbsp;</td>
                <td>
                    <asp:LinkButton ID="lnkbtnDefault" runat="server" PostBackUrl="~/Homepage.aspx">首页</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="lknbtnRegister" runat="server" OnClick="lknbtnRegister_Click">注册</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="lknbtnLogin" runat="server" OnClick="lknbtnLogin_Click">登录</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style73">&nbsp;</td>
                <td colspan="3">
                    <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate>
                            您还未登录
                        </AnonymousTemplate>
                        <RoleGroups>
                            <asp:RoleGroup Roles="Admin">
                                <ContentTemplate>
                                    <asp:LoginName ID="lognAdmin" runat="server" FormatString="Welcome: {0}" />
                                    &nbsp;<asp:LinkButton ID="lnkbtnPwd" runat="server" PostBackUrl="~/ChangePwd.aspx">密码修改</asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="lnkbtnUserManage" runat="server" PostBackUrl="~/Admin/RolesUsers.aspx">用户管理</asp:LinkButton>
                                    &nbsp;<asp:LoginStatus ID="logsAdmin" runat="server" LogoutAction="RedirectToLoginPage" />
                                </ContentTemplate>
                            </asp:RoleGroup>
                            <asp:RoleGroup Roles="Member">
                                <ContentTemplate>
                                    <asp:LoginName ID="lognMember" runat="server" FormatString="Welcome: {0}" />
                                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton>
                                    &nbsp;<asp:LoginStatus ID="LoginStatus2" runat="server" />
                                </ContentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style73">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style71" rowspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" class="auto-style2" src="image/爱在再在一起.png" /></td>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp; 您好，欢迎参与金陵公益</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <img alt="" class="auto-style7" src="image/放大镜.jpg" /></td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style8">
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style19">
                    <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#009933" ForeColor="White" NavigateUrl="~/homepage.aspx">首页</asp:HyperLink>
                </td>
                <td class="auto-style20" style="text-align: center; background-color: #009933">
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/New.aspx">新闻动态</asp:HyperLink>
                </td>
                <td class="auto-style19" style="text-align: center">
                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/act.aspx">公益活动</asp:HyperLink>
                </td>
                <td class="auto-style20" style="text-align: center; background-color: #009933">
                    <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/photo.aspx">益相册</asp:HyperLink>
                </td>
                <td class="auto-style19">
                    <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="White" NavigateUrl="~/found.aspx">基金会</asp:HyperLink>
                </td>
                <td class="auto-style12">
                    <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White" NavigateUrl="~/contact.aspx">联系我们</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
    <table class="auto-style21">
        <tr>
            <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img alt="" class="auto-style22" src="image/横照片.png" /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ---------------------------------------------------------------------------------------------------------------------</td>
        </tr>
    </table>
    <table class="auto-style24">
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style26">热点资讯&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style29">更多&gt;&gt;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style27">&nbsp;我要捐款</td>
            <td class="auto-style30">更多&gt;&gt;</td>
        </tr>
    </table>
    <table class="auto-style31">
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style35" colspan="2"><strong>贫困女大学生兼职十余份 为资助3名学生读完初中</strong></td>
            <td class="auto-style34"></td>
            <td class="auto-style34" rowspan="5">
                <img alt="" class="auto-style51" src="image/家庭.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style49"></td>
            <td class="auto-style48">
                <img alt="" class="auto-style37" src="image/女大学生.jpg" /></td>
            <td class="auto-style40"><span class="auto-style39" style="font-family: 宋体, 'Arial Narrow', HELVETICA; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">在成都师范学院就读的汤丽莎先后做了十多份兼职：擦皮鞋、卖废纸、发传单、做助教……才积少成多，汇集成了三位受助贫困生的“初中基金”。</span></td>
            <td class="auto-style50"></td>
        </tr>
        <tr>
            <td class="auto-style41"></td>
            <td class="auto-style42" colspan="2">受过更好教育的人，要敢于承担更大的风险</td>
            <td class="auto-style44"></td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style61" rowspan="5">
                <img alt="" class="auto-style52" src="image/教育.jpg" /></td>
            <td class="auto-style56" rowspan="5"><span class="auto-style39" style="font-family: 宋体, 'Arial Narrow', HELVETICA; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">5月13日，北京大学乐天行动派公益沙龙第三期活动于北京大学全球大学生创新创业中心举办，主题为“带你去看更远的地方——教育公益与青年成长”。</span></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style55"></td>
            <td class="auto-style54"></td>
            <td class="auto-style54"></td>
        </tr>
        <tr>
            <td class="auto-style62"></td>
            <td class="auto-style60" colspan="2">学生入学查三代？上海对某些民办学校追责</td>
            <td class="auto-style46"></td>
            <td class="auto-style46"></td>
        </tr>
        <tr>
            <td class="auto-style63"></td>
            <td class="auto-style64">
                <img alt="" class="auto-style65" src="image/查三代.jpg" /></td>
            <td class="auto-style64"><span class="auto-style39" style="font-family: 宋体, 'Arial Narrow', HELVETICA; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">5月7日,上海青浦世外学校就“小学招生面谈调查问卷家长”一事致歉。</span></td>
            <td class="auto-style64"></td>
            <td class="auto-style64"></td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <table class="auto-style66">
        <tr>
            <td class="auto-style70">&nbsp;</td>
            <td class="auto-style68" style="text-align: center; border-top-style: dotted; border-top-width: 1px">版权信息 南大金陵15计算机17号程嘉</td>
            <td class="auto-style69">&nbsp;</td>
        </tr>
    </table>
</body>
</html>
