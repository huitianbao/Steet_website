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
        var result = from c in db.HotRolling
                     select c;
        GridView1.DataSource = result;
        GridView1.DataBind();
    }

    protected void btn_update_hot_Click(object sender, EventArgs e)
    {
        var re = from r in db.HotRolling
                 where r.Id == int.Parse(tb_update_hot_id.Text)
                 select r;
        if (re != null)
        {
            foreach(HotRolling r in re)
            {
                r.Id = int.Parse(tb_update_hot_id.Text);
                r.品名 = tb_update_hot_name.Text;
                r.牌号 = tb_update_hot_paihao.Text;
                r.规格 = tb_update_hot_guige.Text;

            }
            db.SubmitChanges();
            Bind();
        }
    }

    protected void Bind()
    {
        var result = from r in db.HotRolling
                     select r;
        GridView1.DataSource = result;
        GridView1.DataBind();

    }
}