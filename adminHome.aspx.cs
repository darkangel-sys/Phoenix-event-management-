using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/eventsimg/") + Path.GetFileName(FileUpload1.FileName));
        var imgstr = "eventsimg/" + Path.GetFileName(FileUpload1.FileName);
        String conn = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\Welcome\\Downloads\\Database.mdf; Integrated Security = True; Connect Timeout = 30";
        //String myquery = "insert into userdetails values('mail2harshitakeyan@gmail.com''" +TextBox1.Text+"','"+TextBox2.Text+ "','18-06-1999','0','"+TextBox3.Text+"','1')";
        string myquery = "Insert into event1 values('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','1','imgstr')";
        //string myquery = "exec addUserDetails1 '" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "'";
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("login.aspx");
        con.Close();
        //SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Harshitha\\Documents\\Visual Studio 2015\\WebSites\\phoenixevent\\App_Data\\Database.mdf;Integrated Security=True");
        //con.Open();
        //SqlCommand cmd = new SqlCommand("Insert into event1 values('"+DropDownList1.SelectedValue+ "','" + TextBox1.Text + "','" + TextBox5.Text+"','"+TextBox4.Text+"','"+TextBox3.Text+"','1','imgstr')", con);


        //SqlDataReader dr = cmd.ExecuteReader();

        //if (dr.Read()) // valid user
        //{
        //    Response.Write("<script>alert('successful login')</script>");
        //    Response.Redirect("adminHome.aspx");
        //}
        //else
        //{
        //    Response.Write("<script>alert('Error in login')</script>");
        //}

        //con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/eventsimg/") + Path.GetFileName(FileUpload1.FileName));
        var imgstr = "eventsimg/" + Path.GetFileName(FileUpload1.FileName);
        String conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Harshitha\\Documents\\Visual Studio 2015\\WebSites\\phoenixevent\\App_Data\\Database.mdf;Integrated Security=True";
        //String myquery = "insert into userdetails values('mail2harshitakeyan@gmail.com''" +TextBox1.Text+"','"+TextBox2.Text+ "','18-06-1999','0','"+TextBox3.Text+"','1')";
        string myquery = "Insert into event1 values('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','1','"+imgstr+"')";
        //string myquery = "exec addUserDetails1 '" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "'";
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("login.aspx");
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        FileUpload2.SaveAs(Server.MapPath("~/eventsimg/") + Path.GetFileName(FileUpload2.FileName));
        var imgtypestr = "eventsimg/" + Path.GetFileName(FileUpload2.FileName);
        String conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Harshitha\\Documents\\Visual Studio 2015\\WebSites\\phoenixevent\\App_Data\\Database.mdf;Integrated Security=True";
        string myquery = "Insert into eventtype values('" + TextBox2.Text + "','" + imgtypestr + "')";
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("login.aspx");
        con.Close();

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        FileUpload3.SaveAs(Server.MapPath("~/eventsimg/") + Path.GetFileName(FileUpload3.FileName));
        var imgtypestr = "eventsimg/" + Path.GetFileName(FileUpload3.FileName);
        String conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Harshitha\\Documents\\Visual Studio 2015\\WebSites\\phoenixevent\\App_Data\\Database.mdf;Integrated Security=True";
        //string myquery = "Insert into eventtype values('" + TextBox2.Text + "','" + imgtypestr + "')";
        string myquery = "update event1 set eventimage ='"+imgtypestr+ "' where id ='"+DropDownList2.SelectedValue+"'";
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        //Response.Redirect("login.aspx");
        con.Close();

    }
}
