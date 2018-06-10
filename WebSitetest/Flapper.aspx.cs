using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Flapper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DatabaseDataContext db = new DatabaseDataContext();
        string str = tb_flapper.Text;

        var re = from r in db.TableFlapper
                 where str.Equals(r.牌号)
                 select r;
        GridView1.DataSource = re;
        GridView1.DataBind();



    }
}