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

public partial class AgentRegistratuon : System.Web.UI.Page
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

        cmd.CommandText = "Insert into AgentRegistration(aid,first_name,middle_name,last_name,mobile_no,email_id,date,agent_name,pwd)values(@aid,@fn,@mn,@ln,@n,@e,@d,@a,@p)";
        cmd.Parameters.AddWithValue("@aid", b.generateID("aid", "AgentRegistration"));
        cmd.Parameters.AddWithValue("@fn", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@mn", txtmname.Text);
        cmd.Parameters.AddWithValue("@ln", txtlastname.Text);
        cmd.Parameters.AddWithValue("@n", txtno.Text);
        cmd.Parameters.AddWithValue("@e",  txtemail.Text);
        cmd.Parameters.AddWithValue("@d", txtdate.Text);
        cmd.Parameters.AddWithValue("@a", txtagent.Text);
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
        txtdate.Text = " ";
        txtno.Text = " ";
        txtagent.Text = " ";
      
    }
 }

   
    