using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;



public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Unnamed4_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }

    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Welcome\\Downloads\\Database.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        SqlCommand cmd = new SqlCommand("exec checkLoginCredentials '"+TextBox1.Text+ "','" + TextBox2.Text + "'", con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read()) // valid user
        {
            Session["Username"] = TextBox1.Text;
            Response.Write("<script>alert('successful login')</script>");
            Response.Redirect("home.aspx");

        }
        else
        {
            Response.Write("<script>alert('Error in login')</script>");
        }
        
        con.Close();
       
    }

    protected void Unnamed5_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
}




  