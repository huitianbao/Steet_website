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

    protected void Button1_Click(object sender, EventArgs e)
    {
        DatabaseDataContext db = new DatabaseDataContext();
        var re = from r in db.Table
                 select new {
                 r.Id};
                 
    
        gv1.DataSource = re;
        gv1.DataBind();

        Button1.Text = "htb htb htb";
        




    }
}