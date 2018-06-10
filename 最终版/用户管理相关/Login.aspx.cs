using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Cryptography;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lknbtnRegister_Click(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            FormsAuthentication.SignOut();
        }
        Response.Redirect("~/用户管理相关/NewUser.aspx");
        //Response.Redirect("http://localhost:65260/dazuoyehui/用户管理相关/NewUser.aspx");
    }

    protected void lknbtnLogin_Click(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            FormsAuthentication.SignOut();
        }
        Response.Redirect("~/用户管理相关/Login.aspx");
       // Response.Redirect("http://localhost:65260/dazuoyehui/用户管理相关/Login.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(" http://www.chinanurse.cn/");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.nmec.org.cn/");
    }
}