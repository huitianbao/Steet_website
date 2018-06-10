using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Cryptography;

public partial class Admin_RolesUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] roles = Roles.GetAllRoles();
            lstRoles.DataSource = roles;
            lstRoles.DataBind();
            MembershipUserCollection users = Membership.GetAllUsers();
            lstUsers.DataSource = users;
            lstUsers.DataBind();
        }
        if (lstRoles.SelectedItem != null)
        {
            GetUsersInRole();
        }
    }
    private void GetUsersInRole()
    {
        string[] usersInRole = Roles.GetUsersInRole(lstRoles.SelectedValue);
        gvUsers.DataSource = usersInRole;
        gvUsers.DataBind();
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
    protected void btnToRole_Click(object sender, EventArgs e)
    {
        if (lstRoles.SelectedItem == null)
        {
            lblMsg.Text = "请选择角色!";
            return;
        }
        if (lstUsers.SelectedItem == null)
        {
            lblMsg.Text = "请选择用户!";
            return;
        }
        string[] newUsers = new string[lstUsers.GetSelectedIndices().Length];
        for (int i = 0; i < newUsers.Length;i++ )
        {
            newUsers[i] = lstUsers.Items[lstUsers.GetSelectedIndices()[i]].Value;
        }
        try
        {
            Roles.AddUsersToRole(newUsers,lstRoles.SelectedValue);
            GetUsersInRole();
        }
        catch(Exception ee)
        {
            lblMsg.Text=ee.Message;
        }
    }
    protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow gridViewRow = gvUsers.Rows[e.RowIndex];
        Label lblName = (Label)gridViewRow.Cells[0].FindControl("lblName");
        string username = lblName.Text;
        try
        {
            Roles.RemoveUserFromRole(username, lstRoles.SelectedValue);
        }
        catch (Exception ee)
        {
            lblMsg.Text = "从角色中删除用户时的错误：" + ee.GetType().ToString();
        }
        GetUsersInRole();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToLongTimeString();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(" http://www.chinanurse.cn/");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.nmec.org.cn/");
    }
}