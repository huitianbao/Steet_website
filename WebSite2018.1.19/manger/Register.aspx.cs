using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manger_Register : System.Web.UI.Page
{
    FlapperDataContext db = new FlapperDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        MyLogin login = new MyLogin();
        login.name = tb_name.Text;
        login.pass = tb_pass.Text;
        login.tel = tb_tel.Text;

        db.MyLogin.InsertOnSubmit(login);
        db.SubmitChanges();
        Bind();

    }

    protected void Bind()
    {
        var result = from r in db.MyLogin
                     where r.name==tb_name.Text
                     select r;
        if (result !=null)
        {
            Label1.Text = "注册成功";
        }
        GridView1.DataSource = result;
        GridView1.DataBind();

    }
}