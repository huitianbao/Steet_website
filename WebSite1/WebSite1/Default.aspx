<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">首页</asp:HyperLink>
&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/warehouse.aspx">仓库查询</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/flapper.aspx">号牌查询</asp:HyperLink>
&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/notice.aspx">公告</asp:HyperLink>
&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/consult.aspx">咨询电话</asp:HyperLink>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />

            </div>

            <asp:ImageButton ID="logo" runat="server" Height="78px" ImageUrl="~/image/上海邑云logo.PNG" OnClick="ImageButton1_Click" Width="261px" />
        &nbsp;<asp:TextBox ID="spec" runat="server">规格（2*2*3）必填</asp:TextBox>
            <asp:TextBox ID="TextBox_flapper" runat="server">号牌</asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" BorderStyle="Ridge" ForeColor="Blue" Text="邑云查找" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton_hot_rolling" runat="server" Text="热轧" />
            <asp:RadioButton ID="RadioButton_cold_rolling" runat="server" Text="冷轧" />
        </div>
        <div>

        </div>
    </form>
</body>
</html>
