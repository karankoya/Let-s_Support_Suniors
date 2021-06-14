using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Windows.Forms;
using System.Drawing;

using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;

public partial class Register_Register : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Project.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (FileUpload1.HasFile == true)
        {
            string fname = FileUpload1.FileName;
            string path = Server.MapPath("~/ProfilePic/");
            FileUpload1.SaveAs(path + fname);
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        int value = random.Next(10001, 99999);
        string destinationaddr = "91" + TextBox3.Text;
        string message = "Your One time Password is "+value+"(Don't share this to anyone)";

        String message1 = HttpUtility.UrlEncode(message);

        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "1axKGyVYx9k-5UPw5iHQUTzR7XWBlLf9GJvHd56vLW"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            Session["otp"] = value;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string to = TextBox5.Text;
        string from = "YOUR EMAIL"; //WRITE YOUR EMAIL HERE

        MailMessage message = new MailMessage(from, to);
        Random rd =new Random();
        int value = rd.Next(10000,99999);
        Session["Eotp"] = value;

        string mailbody = "Hello " +TextBox1.Text+", Your Email verification code is "+value.ToString();
        message.Subject = "Activation Code for Let's support juniors";
        message.Body = mailbody;
        message.BodyEncoding  = Encoding.UTF8;
        message.IsBodyHtml = true;

        SmtpClient client = new SmtpClient("smtp.gmail.com",587);
        System.Net.NetworkCredential basiccredential1 = new System.Net.NetworkCredential("EMAIL ID","PASSWORD"); //WRITE YOUR EMAIL AND PASSWORD HERE
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = basiccredential1;

        try
        {
            client.Send(message);
        }
        catch(Exception ex)
        {
           throw ex;
        }
    }
    protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (TextBox6.Text == Session["Eotp"].ToString())
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        conn.Open();
        string username = TextBox1.Text;
        string password = TextBox2.Text;
        int courseId = getCourseId();
        int inst_Id = getInstId();
        string filename = FileUpload1.FileName;
        string mobileno = TextBox3.Text;
        string email = TextBox5.Text;
        string role = "User";

        string insertuser = "insert into [User](user_name,mob_no,email,course_id,inst_id,password,profile_pic,role) values('"+username+"','"+mobileno+"','"+email+"',"+courseId+","+inst_Id+",'"+password+"','~/ProfilePic/"+filename+"','"+role+"')";
        SqlCommand cmd = new SqlCommand(insertuser, conn);
        cmd.ExecuteNonQuery();
        Response.Redirect("~/User/User.aspx");
    }

    public int getInstId()
    {
        int id = 0;
        string instname = DropDownList2.SelectedItem.ToString();
        string getId = "select inst_id from Institute where inst_name = '" + instname + "'";
        SqlCommand cmd = new SqlCommand(getId, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            id = Convert.ToInt32(dr[0].ToString());
        }
        dr.Close();
        return id;
    }

    public int getCourseId()
    {
        int id = 0;
        string coursename = DropDownList1.SelectedItem.ToString();
        string getId = "select course_id from Course where course_name = '" + coursename + "'";
        SqlCommand cmd = new SqlCommand(getId, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            id = Convert.ToInt32(dr[0].ToString());
        }
        dr.Close();

        return id;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["otp"].ToString() == TextBox7.Text)
        {
            Label13.ForeColor = System.Drawing.Color.Green;
            Label13.Text = "Mobile Verified";
        }
        else
        {
            Label13.ForeColor = System.Drawing.Color.Red;
            Label13.Text = "OTP Invalid";   
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Session["Eotp"].ToString() == TextBox6.Text)
        {
            Label14.ForeColor = System.Drawing.Color.Green;
            Label14.Text = "Email Verified";
        }
        else
        {
            Label14.ForeColor = System.Drawing.Color.Red;
            Label14.Text = "OTP Invalid";
        }
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        conn.Open();
        string search = "select user_name from [User] where UPPER(user_name) = '"+TextBox1.Text.ToUpper()+"'";

        SqlCommand cmd = new SqlCommand(search,conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
        dr.Close();
        conn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        conn.Open();
        string selectJoin = "SELECT Institute.inst_name FROM Institute INNER JOIN inst_In_course ON Institute.inst_id = inst_In_course.inst_id INNER JOIN Course ON inst_In_course.course_id = Course.course_id WHERE Course.course_id = (SELECT course_id FROM Course WHERE course_name = @coursename)";
        SqlCommand cmd = new SqlCommand(selectJoin,conn);
        cmd.Parameters.Add("@coursename",DropDownList1.SelectedItem.ToString());
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList2.Items.Add(dr[0].ToString());
        }
        dr.Close();
        conn.Close();
    }
    protected void CustomValidator3_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        conn.Open();
        string search = "select email from [User] where email = '" + TextBox5.Text + "'";

        SqlCommand cmd = new SqlCommand(search, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
        dr.Close();
        conn.Close();
    }
    protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
    {
        conn.Open();
        string search = "select mob_no from [User] where mob_no = '" + TextBox3.Text + "'";

        SqlCommand cmd = new SqlCommand(search, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
        dr.Close();
        conn.Close();
    }
}