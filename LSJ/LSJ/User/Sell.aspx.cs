using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Sell : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\LSJ\\App_Data\\Project.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string openimage()
    {
        string imgfilename = FileUpload1.FileName.ToString();
        if (imgfilename != "")
        {
            string path = Server.MapPath("~/productimg/");
            FileUpload1.SaveAs(path + imgfilename);
        }
        return imgfilename;
    }
   
    protected void Button2_Click1(object sender, EventArgs e)
    {
        cn.Open();
        string openimg = openimage();
        String str1 = "insert into product_for_sell(prod_name,prod_des,prod_price,prod_photo) values( '" + TextBox1.Text + "' , '" + TextBox2.Text + "' , '" + TextBox3.Text + "' , '" + openimg + "' +'"   +"')";
        SqlCommand cmd1 = new SqlCommand(str1, cn);
        SqlDataAdapter da = new SqlDataAdapter();
        cmd1.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("~/User/postad.aspx");
    }
}