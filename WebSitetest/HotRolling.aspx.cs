using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HotRolling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Buttonquery_Click(object sender, EventArgs e)
    {
        DatabaseDataContext db = new DatabaseDataContext();
        string str_guige = TextBox_guige.Text;
        string str_paihao = TextBox_paihao.Text;


        var re = from rr in db.TableHotRolling

                 where str_paihao.Equals(rr.牌号)&&(str_guige.Equals(rr.规格))
                 select rr;
        GridView1.DataSource = re;
        GridView1.DataBind();

    }




}