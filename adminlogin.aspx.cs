using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Welcome\\Downloads\\Database.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from adminlogin where username=@username and password=@password", con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read()) // valid user
        {
            Response.Write("<script>alert('successful login')</script>");
            Response.Redirect("adminHome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Error in login')</script>");
        }

    con.Close();
    }
   
}