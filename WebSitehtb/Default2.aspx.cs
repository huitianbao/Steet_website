using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DatabaseDataContext db = new DatabaseDataContext();
        var re = from c in db.TableHotrolling
                 where c.Id < 3
                 select c;
        GridView1.DataSourceID = null;
        GridView1.DataSource = re;

        GridView1.DataBind();

             
    }
}