using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;
using System.IO;
public partial class UserRegistration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    BasicCode b = new BasicCode();
    int num = 1;
    protected void Page_Load(object sender, EventArgs e)
    {

   

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);       
        SqlCommand cmd = new SqlCommand();
        con.Open();

        cmd.CommandText = "Insert into UserRegistration(id,first_name,middle_name,last_name,mobile_no,email_id,date,user_id,pwd)values(@id,@fn,@mn,@ln,@n,@e,@d,@u,@p)";
        cmd.Parameters.AddWithValue("@id", b.generateID("id","UserRegistration"));
        cmd.Parameters.AddWithValue("@fn", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@mn", txtmname.Text);
        cmd.Parameters.AddWithValue("@ln", txtlastname.Text);
        cmd.Parameters.AddWithValue("@n", txtno.Text);
        cmd.Parameters.AddWithValue("@e",  txtemail.Text);
        cmd.Parameters.AddWithValue("@d", txtdate.Text);
        cmd.Parameters.AddWithValue("@u", txtuser.Text);
        cmd.Parameters.AddWithValue("@p", txtpwd.Text);
      

        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully!!!!!!');</script>");
        }
        //Session["username"] = txtusername.Text;
        txtfirstname.Text = " ";
        txtmname.Text = " ";
        txtemail.Text = " ";
        txtno.Text = " ";
        txtdate.Text = " ";
        txtuser.Text = " ";
      
    }
 }

   