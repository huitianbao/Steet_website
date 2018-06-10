using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flapper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string flapper_string = System.Configuration.ConfigurationManager.ConnectionStrings["FlapperDatabaseConnectionString1"].ConnectionString;
        DatabaseFlapperDataContext db = new DatabaseFlapperDataContext("flapper_string");

        var re = from r in db.GetTable<TableFlapper>
                 select new {
                 r.
                 };

        GridView1.DataSource = re;
        GridView1.DataBind();




        
        
    }
}