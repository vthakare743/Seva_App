using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class Admin_EditAgent : System.Web.UI.Page
{
   SqlConnection con;
    SqlCommand cmd;
    public void showuser()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "select first_name,middle_name,last_name,mobile_no,email_id from AgentRegistration where aid="+Request.QueryString["aid"].ToString();

        cmd.Parameters.AddWithValue("@aid", Request.QueryString["aid"].ToString());
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtfirstname.Text = dr.GetString(0);
            txtmname.Text = dr.GetString(1);
            txtlastname.Text = dr.GetString(2);
            txtno.Text = dr.GetString(3);
            txtemail.Text = dr.GetString(4);
            

        }
        else
        {
            txtfirstname.Text = "";
            txtmname.Text = "";
            txtlastname.Text = "";
            txtno.Text = "";
            txtemail.Text = "";
           
        }
        con.Close();
    
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            showuser();
        }

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "update AgentRegistration set first_name=@fn,middle_name=@mn,last_name=@lname,mobile_no=@n,email_id=@em where aid=@aid";

        cmd.Parameters.AddWithValue("@fn", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@mn", txtmname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlastname.Text);
        cmd.Parameters.AddWithValue("@n", txtno.Text);
        cmd.Parameters.AddWithValue("@em", txtemail.Text);
        cmd.Parameters.AddWithValue("@aid", Request.QueryString["aid"].ToString());
        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {

            lblmsg.Text = "Record Update succesfully";
            lblmsg.ForeColor = System.Drawing.Color.ForestGreen;
        }
        else
        {
            lblmsg.Text = "Record not updated";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        con.Close();

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "delete AgentRegistration where aid=@aid";
        cmd.Parameters.AddWithValue("@aid", Request.QueryString["aid"].ToString());
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Record Delete Successfully!!!!!!');</script>");
    }
}