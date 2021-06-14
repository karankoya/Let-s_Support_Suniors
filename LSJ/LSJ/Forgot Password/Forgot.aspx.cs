using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Text;

public partial class Forgot_Password_Forgot : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Project.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        conn.Open();
        string selectCmd = "select password from User where email = '" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(selectCmd, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["Epassword"] = dr[0].ToString();
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string to = TextBox1.Text;
        string from = "YOUR EMAIL"; //WRITE YOUR EMAIL HERE

        MailMessage message = new MailMessage(from, to);

        string mailbody = "Hello User, Your Password is "+Session["Epassword"]+". Please remember it this time and delete this mail from your inbox";
        message.Subject = "Forgot Password Request";
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;

        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        System.Net.NetworkCredential basiccredential1 = new System.Net.NetworkCredential("EMAIL ID", "PASSWORD"); //WRITE YOUR EMAIL AND PASSWORD HERE
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = basiccredential1;

        try
        {
            client.Send(message);
            Label3.ForeColor = System.Drawing.Color.Green;
            Label3.Text = "Check your inbox and back to login";
            LinkButton1.Visible = true;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login/Login.aspx");
    }
}