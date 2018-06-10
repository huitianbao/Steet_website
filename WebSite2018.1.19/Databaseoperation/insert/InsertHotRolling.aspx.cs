using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//                               有问题
public partial class Databaseoperation_InsertHotRolling : System.Web.UI.Page
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        HotRolling hot = new HotRolling();
        hot.Id = int.Parse(tb_inseret_hot_id.Text);
        hot.品名 = tb_inseret_hot_name.Text;
        hot.牌号 = tb_inseret_hot_num.Text;
        hot.规格 = tb_inseret_hot_guige.Text;
        

        db.HotRolling.InsertOnSubmit(hot);
        db.SubmitChanges();

        Bind();
    }
    protected void Bind()
    {
        var result = from r in db.HotRolling
                     select r;
        GridView1.DataSource = result;
        GridView1.DataBind();

    }
}