using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Databaseoperation_Insert : System.Web.UI.Page
{
    FlapperDataContext db = new FlapperDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //插入 新的 HotRolling 数据
    protected void Button1_Click(object sender, EventArgs e)
    {

        HotRolling hot = new HotRolling();
        hot.Id = int.Parse(tb_inseret_hot_id.Text);
        hot.品名 = tb_inseret_hot_name.Text;
        hot.牌号 = tb_inseret_hot_num.Text;
        hot.规格 = tb_inseret_hot_guige.Text;
        db.HotRolling.InsertOnSubmit(hot);
        db.SubmitChanges();


       

    }
    //插入新的 仓库数据
    protected void btn_intsert_ware_Click(object sender, EventArgs e)
    {
        Table table = new Table();
        table.Id = int.Parse(tb_insert_ware_id.Text);
        table.仓库名称 = tb_insert_ware_name.Text;
        table.简码 = tb_insert_ware_jianma.Text;
        table.简称 = tb_insert_ware_jiancheng.Text;
        db.Table.InsertOnSubmit(table);
        db.SubmitChanges();
    }

    //插入新的 Flapper数据
    protected void btn_insert_update_Click(object sender, EventArgs e)
    {
        Flapper flapper = new Flapper();
        flapper.Id = int.Parse(tb_insert_paihao_id.Text);
        flapper.种类 = tb_insert_paihao_catagory.Text;
        flapper.牌号描述 = tb_insert_paihao_discribe.Text;
        flapper.牌号 = tb_insert_paihao.Text;
        db.Flapper.InsertOnSubmit(flapper);
        db.SubmitChanges();

    }
    //修改 HotRolling数据

    protected void btn_update_hot_Click(object sender, EventArgs e)
    {
        var re = from r in db.HotRolling
                 where r.Id == int.Parse(tb_update_hot_id.Text)
                 select r.Id,
                 r.品名,
                 r.规格,
                 r.牌号;

        if (re != null)
        {
            foreach(var r in re)
            {
                r.Id = int.Parse(tb_update_hot_id);

            }
        }
    }
}