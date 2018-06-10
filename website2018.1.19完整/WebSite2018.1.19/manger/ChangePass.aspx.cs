using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manger_ChangePass : System.Web.UI.Page
{
    FlapperDataContext db = new FlapperDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
       // int flag = 0;
        var re = from r in db.MyLogin
                 where r.name == tb_name.Text
                 select r;
        if (re != null)
        {
            
            foreach (MyLogin r in re)
            {
                if (r.name.Equals(tb_name.Text)&& r.tel.Equals(tb_tel.Text))
                {
                    r.name = tb_name.Text;
                    r.pass = tb_pass.Text;
                    r.tel = tb_tel.Text;

                }
         
            }
            Label1.Text ="修改成功，请返回登录";

            db.SubmitChanges();  //to
            //to  打出原来的用户名

        //打出修改后的用户名和密码
        }
        else
        {
            Label1.Text = "输入的信息有误，请重新输入";
        }
    }



  
}