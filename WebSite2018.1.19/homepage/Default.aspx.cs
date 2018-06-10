using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://yiyun.mysteel.com.cn");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strGuige = TextBox1.Text;

        string strPaihao = TextBox2.Text;

        FlapperDataContext db = new FlapperDataContext();
        if (strPaihao!="")
        {
            var re = from r in db.HotRolling
                     where r.牌号.Equals(strPaihao) & r.规格.Equals(strGuige)
                     select r;
            gvHotRolling.DataSource = re;
            gvHotRolling.DataBind();
        }
        else
        {
            TextBox2.Text = "this is null";
            var re = from r in db.HotRolling
                     where r.规格.Equals(strGuige)
                     select r;
            gvHotRolling.DataSource = re;
            gvHotRolling.DataBind();
        }
       
    }
}