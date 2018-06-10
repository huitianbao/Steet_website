<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetPwd.aspx.cs" Inherits="GetPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
              
            </tr>
        </table>
    <section>

    
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
            <MailDefinition BodyFileName="~/GetPwd.txt" From="123@qq.com" IsBodyHtml="True">
            </MailDefinition>
        </asp:PasswordRecovery>
    
    </section>


    </form>
</body>
</html>
