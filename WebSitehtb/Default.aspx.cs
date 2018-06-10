using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DatabaseDataContext db = new DatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
        var results = from r in db.TableFlapper
                      select r;


       // gv_flapper.DataSource = results;


        //gv_flapper.DataBind();
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
       // DatabaseDataContext db = new DatabaseDataContext();
        var results = from r in db.TableFlapper 
                      where r.Id < 3
                      select r;
         //gv_flapper.DataSource = results;


        gv_flapper.DataBind();
    }
}