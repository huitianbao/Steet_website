using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 数据库_DataManger : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        mydatabaseDataContext db = new mydatabaseDataContext();
        var result = from r in db.Login
                     select new
                     {
                         r.Id,
                         r.name,
                         r.pass
                     };
        gvCategory.DataSource = result;
        gvCategory.DataBind();


    }
    protected void btnFuzzy_Click(object sender, EventArgs e)
    {
        Response.Redirect("FuzzyQuery.aspx");

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("Insert.aspx");
       
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update.aspx?CategoryId=" + txtCategoryId.Text);
    }


    protected void Bind()
    {
        mydatabaseDataContext db = new mydatabaseDataContext();
        var results = from c in db.Login
                      select c;
        gvCategory.DataSource = results;
        gvCategory.DataBind();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        mydatabaseDataContext db = new mydatabaseDataContext();
        var results = from c in db.Login
                      where c.Id == txtCategoryId.Text
                      select c;
        db.Login.DeleteAllOnSubmit(results);
        db.SubmitChanges();
        Bind();

       
    }
}