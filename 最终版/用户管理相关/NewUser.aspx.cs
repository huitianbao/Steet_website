using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Cryptography;

public partial class NewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lknbtnRegister_Click(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            FormsAuthentication.SignOut();
        }
        Response.Redirect("~/NewUser.aspx");
    }
    protected void lknbtnLogin_Click(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            FormsAuthentication.SignOut();
        }
        Response.Redirect("~/Login.aspx");
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        Roles.AddUserToRole(CreateUserWizard1.UserName, "Member");
    }
}