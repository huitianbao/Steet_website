using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy1_sy1_test_7_1_Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string categoryId = Request.QueryString["CategoryId"];
            var category = (from c in db.Login
                            where c.Id ==txtID.Text
                            select c).First();
            txtID.Text = categoryId;
            txtID.ReadOnly = true;
            txtName.Text = category.name;
            txtPass.Text = category.pass;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManager.aspx");
    }
    mydatabaseDataContext db = new mydatabaseDataContext();
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        var category = (from c in db.Login
                        where c.Id == txtID.Text
                        select c).First();
        category.name = txtName.Text;
        category.pass = txtPass.Text;
        db.SubmitChanges();
    }
}