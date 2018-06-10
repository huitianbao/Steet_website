using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Databaseoperation_delete_DeleteWare : System.Web.UI.Page
{
    FlapperDataContext db = new FlapperDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //显示最新数据
        var result = from c in db.Table
                     select c;
        GridView1.DataSource = result;
        GridView1.DataBind();
    }

    protected void btn_del_ware_Click(object sender, EventArgs e)
    {
        var re = from r in db.Table
                 where r.Id == int.Parse(tb_del_ware_id.Text)
                 select r;
        db.Table.DeleteAllOnSubmit(re);
        db.SubmitChanges();

        //============================
        //显示最新数据
        var result = from c in db.Table
                     select c;
        GridView1.DataSource = result;
        GridView1.DataBind();
    }
}