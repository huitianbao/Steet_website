<%@ Page Language="C#" AutoEventWireup="true" CodeFile="warehouse.aspx.cs" Inherits="warehouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            this is warehouse.aspx<br />
            <br />
            <br />
            仓库查询页<br />
            <br />
        </div>

        <div>


            <asp:TextBox ID="TextBox1" runat="server">输入简码或名称</asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" BorderStyle="Ridge" ForeColor="Blue" Text="仓库查找"/>

        </div>

        <div>

        </div>
    </form>
</body>
</html>
