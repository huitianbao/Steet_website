using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Databaseoperation_UpdateFlapper : System.Web.UI.Page
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

    protected void btn_update_flapper_Click(object sender, EventArgs e)
    {
        var re = from r in db.Flapper
                 where r.Id == int.Parse(tb_update_flapper_id.Text)
                 select r;
        if (re != null)
        {
            foreach(Flapper r in re)
            {
                r.Id = int.Parse(tb_update_flapper_id.Text);
                r.牌号 = tb_update_paihao.Text;
                r.牌号描述 = tb_update_flapper_discribe.Text;
                r.种类 = tb_update_flapper_catagory.Text;
            }
            db.SubmitChanges();
            Bind();
        }
    }

    protected void Bind()
    {
        var result = from r in db.Flapper
                     select r;
        GridView1.DataSource = result;
        GridView1.DataBind();

    }
}