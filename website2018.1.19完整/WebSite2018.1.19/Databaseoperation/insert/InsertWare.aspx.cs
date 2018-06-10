using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Databaseoperation_InsertWare : System.Web.UI.Page
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



  

    protected void btn_intsert_ware_Click(object sender, EventArgs e)
    {
        Table table = new Table();
        table.Id = int.Parse(tb_insert_ware_id.Text);
        table.仓库名称 = tb_insert_ware_name.Text;
        table.联系方式 = tb_insert_ware_connect.Text;
        table.简称 = tb_insert_ware_jiancheng.Text;
        table.简码 = tb_insert_ware_jianma.Text;

        db.Table.InsertOnSubmit(table);
        db.SubmitChanges();

        Bind();


    }
    protected void Bind()
    {
        var result = from r in db.Table
                     select r;
        GridView1.DataSource = result;
        GridView1.DataBind();

    }
}