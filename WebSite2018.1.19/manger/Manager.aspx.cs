using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddl_Hot_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_Hot.SelectedIndex == 1)
        {
            //跳转到 插入数据的页面

        }else if (ddl_Hot.SelectedIndex == 2)
        {
            //跳转到修改数据的页面
        }else
        {
            //跳转到删除数据的页面
        }
    
    }

    protected void ddl_ware_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_ware.SelectedIndex == 1)
        {
            //跳转到 插入数据的页面

        }
        else if (ddl_ware.SelectedIndex == 2)
        {
            //跳转到修改数据的页面
        }
        else
        {
            //跳转到删除数据的页面
        }
    }

    protected void ddl_flapper_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_flapper.SelectedIndex== 1)
        {
            //跳转到 插入数据的页面

        }
        else if (ddl_flapper.SelectedIndex == 2)
        {
            //跳转到修改数据的页面
        }
        else
        {
            //跳转到删除数据的页面
        }
    }
}