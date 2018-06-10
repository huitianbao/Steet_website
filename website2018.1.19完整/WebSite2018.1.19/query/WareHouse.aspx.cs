﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WareHouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = TextBox1.Text;

        FlapperDataContext db = new FlapperDataContext();
        var re = from r in db.Table
                 where r.简码.Equals(str)
                 select r;
        gvWareHouse.DataSource = re;
        gvWareHouse.DataBind();

    }
}