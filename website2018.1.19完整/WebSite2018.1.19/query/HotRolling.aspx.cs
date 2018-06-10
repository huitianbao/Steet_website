using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HotRolling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strGuige = TextBox1.Text;

        string strPaihao = TextBox2.Text;
        FlapperDataContext db = new FlapperDataContext();
        var re = from r in db.HotRolling
                 where r.牌号.Equals(strPaihao) & r.规格.Equals(strGuige)
                 select r;
        gvHotRolling.DataSource = re;
        gvHotRolling.DataBind();

    }
    
}