using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login_Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Project.mdf;Integrated Security=True;User Instance=True");
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        conn.Open();
        string selectCmd = "select password from [User] where user_name = '"+TextBox1.Text+"'";
        SqlCommand cmd = new SqlCommand(selectCmd,conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["password"] = dr[0].ToString();
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
        conn.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (TextBox2.Text == Session["password"])
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Forgot Password/Forgot.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Register/Register.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/User.aspx");
    }
}