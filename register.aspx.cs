
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.IO;




public partial class register : System.Web.UI.Page

{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Welcome\\Downloads\\Database.mdf;Integrated Security=True;Connect Timeout=30";
        //String myquery = "insert into userdetails values('mail2harshitakeyan@gmail.com''" +TextBox1.Text+"','"+TextBox2.Text+ "','18-06-1999','0','"+TextBox3.Text+"','1')";
        string myquery = "exec addUserDetails1 '"+TextBox5.Text+ "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "'";
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("login.aspx");
        con.Close();
    }
}


