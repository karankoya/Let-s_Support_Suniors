using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedIndex == 0)
        {
            Panel1.Visible = true;

        }
        else
        {
            Panel1.Visible = false;

        }

       
    }
    protected void sell_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/User/Sell.aspx");
    }
}