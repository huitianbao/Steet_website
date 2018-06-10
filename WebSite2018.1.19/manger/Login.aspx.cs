using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manger_Login : System.Web.UI.Page
{
    FlapperDataContext db = new FlapperDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var re = from r in db.MyLogin
                 where r.name == tb_name.Text
                 select r;
        if (re!=null)
        {
            foreach(MyLogin r in re)
            {
                if (r.name == tb_name.Text && r.pass == tb_pass.Text)
                {
                    Label1.Text = "登录成功";
                    if (tb_name.Text.StartsWith("A"))
                    {
                        Response.Redirect("~/manger/Manager.aspx");
                    }else if (tb_name.Text.StartsWith("U"))
                    {
                        Response.Redirect("~/homepage/Default_already.aspx");

                    }
                    else
                    {
                        Label1.Text = "登录非法重新登录";
                    }
                   
                }
                else
                {
                    Label1.Text = "登录失败请重新登录";
                }
            }
           
        }
       

    }
}