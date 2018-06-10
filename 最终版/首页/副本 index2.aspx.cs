using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 首页_index2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToLongTimeString();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(" http://www.chinanurse.cn/");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.nmec.org.cn/");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToLongTimeString();
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
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


}