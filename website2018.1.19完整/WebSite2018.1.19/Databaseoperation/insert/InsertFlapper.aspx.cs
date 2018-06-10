using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Databaseoperation_InsertFlapper : System.Web.UI.Page
{
    FlapperDataContext db = new FlapperDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //显示最新数据
        var result = from c in db.Flapper
                     select c;
        GridView1.DataSource = result;
        GridView1.DataBind();
    }

    protected void btn_insert_update_Click(object sender, EventArgs e)
    {
        Flapper flapper = new Flapper();
        flapper.Id = int.Parse(tb_insert_paihao_id.Text);
        flapper.牌号 = tb_insert_paihao.Text;
        flapper.种类 = tb_insert_paihao_catagory.Text;
        flapper.牌号描述 = tb_insert_paihao_discribe.Text;

        db.Flapper.InsertOnSubmit(flapper);
        db.SubmitChanges();

        Bind();

    }
    protected void Bind()
    {
        var result = from r in db.Flapper
                     select r;
        GridView1.DataSource = result;
        GridView1.DataBind();

    }
}