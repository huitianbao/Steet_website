using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Databaseoperation_delete_DeleteFlapper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    FlapperDataContext db = new FlapperDataContext();
    protected void btn_del_flapper_Click(object sender, EventArgs e)
    {
        var re = from r in db.Flapper
                 where r.Id == int.Parse(tb_del_flapper_id.Text)
                 select r;
        db.Flapper.DeleteAllOnSubmit(re);
        db.SubmitChanges();

        //============================
        //显示最新数据
        var result = from c in db.Flapper
                     select c;
        GridView1.DataSource = result;
        GridView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //显示最新数据
        var result = from c in db.Flapper
                     select c;
        GridView1.DataSource = result;
        GridView1.DataBind();
    }
}