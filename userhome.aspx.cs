using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userhome : System.Web.UI.Page
{
    public string eventTypeId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null) {
            Response.Redirect("login.aspx");
        }
        DataList2.Visible = false;
    }

    //Protected Sub DataList1_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.ItemCommand
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ViewItemEvents")
        {
            Label2.Text = e.CommandArgument.ToString();
            DataList1.Visible = false;
            DataList2.Visible = true;
           // Response.Redirect("content.aspx?content=" + e.CommandArgument.ToString());
        }
    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ViewItemDetails")
        {
            Label2.Text = e.CommandArgument.ToString();
            DataList1.Visible = false;
            DataList2.Visible = false;
            // Response.Redirect("content.aspx?content=" + e.CommandArgument.ToString());

            //code toretrieve detils of an event
            String conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Welcome\\Downloads\\Database.mdf;Integrated Security=True;Connect Timeout=30";
            //String myquery = "insert into userdetails values('mail2harshitakeyan@gmail.com''" +TextBox1.Text+"','"+TextBox2.Text+ "','18-06-1999','0','"+TextBox3.Text+"','1')";
            string myquery = "select * from event1 where id = '"+Label2.Text+"'";
            //string myquery = "exec addUserDetails1 '" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "'";
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            using (SqlDataReader oReader = cmd.ExecuteReader())
            {
                while (oReader.Read())
                {

                    Label3.Text = oReader["eventname"].ToString();

                    Label4.Text = oReader["eventprice"].ToString();

                   
                    Label5.Text = oReader["eventdescription"].ToString();
                    Label6.Text = oReader["eventinclusion"].ToString();
                    Image2.ImageUrl = oReader["eventimage"].ToString();
                }  
            }
            //SqlDataReader sdr = cmd.ExecuteReader(); 
            //While sdr.Read = True
              //  Label1.Text = sdr.Item("SUM")
            //End While
            //End If
            con.Close();

        }
    }

}