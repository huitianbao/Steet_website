<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataManger.aspx.cs" Inherits="数据库_DataManger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    
        分类id:
        <asp:TextBox ID="txtCategoryId" runat="server" Width="480px"></asp:TextBox>
        <br />
        <asp:Button ID="btnQueryAll" runat="server" OnClick="btnQueryAll_Click" Text="显示全部内容" Width="115px" />
        <asp:Button ID="btnFuzzy" runat="server" OnClick="btnFuzzy_Click" Text="模糊查找" Width="115px" />
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="插入" Width="111px" />
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="修改" Width="115px" />
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="删除" Width="115px" />
        <br />
        <asp:GridView ID="gvCategory" runat="server">
        </asp:GridView>
    
        <br />
    
    </div>
    </form>
</body>
</html>
