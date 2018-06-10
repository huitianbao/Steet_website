using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Databaseoperation_delete_DeleteFlapper : System.Web.UI.Page
{
    FlapperDataContext db = new FlapperDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_del_hot_Click(object sender, EventArgs e)
    {
        var re = from r in db.HotRolling
                 where r.Id == int.Parse(tb_del_hot_id.Text)
                 select r;
        db.HotRolling.DeleteAllOnSubmit(re);
        db.SubmitChanges();

        //============================
        //显示最新数据
        var result = from c in db.HotRolling
                     select c;
        GridView1.DataSource = result;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //显示最新数据
        var result = from c in db.HotRolling
                     select c;
        GridView1.DataSource = result;
        GridView1.DataBind();
    }
}