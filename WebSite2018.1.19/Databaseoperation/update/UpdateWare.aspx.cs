using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Databaseoperation_UpdateWare : System.Web.UI.Page
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

    protected void btn_update_ware_Click(object sender, EventArgs e)
    {
        var re = from r in db.Table
                 where r.Id == int.Parse(tb_ware_update_id.Text)
                 select r;
        if (re != null)
        {
            foreach(Table r in re)
            {
                r.Id = int.Parse(tb_ware_update_id.Text);
                r.仓库名称 = tb_ware_update_name.Text;
                r.联系方式 = tb_ware_update_connect.Text;
                r.简称 = tb_ware_update_jiancheng.Text;
                r.简码 = tb_ware_update_jianma.Text;
            }
            db.SubmitChanges();
            Bind();

        }
    }


    protected void Bind()
    {
        var result = from r in db.Table
                     select r;
        GridView1.DataSource = result;
        GridView1.DataBind();

    }
}