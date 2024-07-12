using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;


public partial class Admin_ApplicationStatus : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    public void showuser()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "select customer_name,mobile_no,email_id,services,date from Service_RequestData where id=" + Request.QueryString["id"].ToString();

        cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtcustomer.Text = dr.GetString(0);
            txtno.Text = dr.GetString(1);
            txtmail.Text = dr.GetString(2);
            txtservice.Text = dr.GetString(3);
            txtdate.Text = dr.GetString(4);
          



        }
        else
        {
            txtcustomer.Text = "";
            txtno.Text = "";
            txtmail.Text = "";
            txtno.Text = "";
            txtservice.Text = "";
            txtdate.Text = "";
          

        }
        con.Close();

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlDataSource1.SelectCommand = "select * from Service_RequestData where id=" + Request.QueryString["id"].ToString();
        if (Page.IsPostBack == false)
        {
            showuser();
        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "update Service_RequestData set status=@s where id=@id";


        cmd.Parameters.AddWithValue("@s", ddlStatus.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
        cmd.Connection = con;


        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {

            //lblmsg.Text = "Submitted Succesfully!!!";
            //lblmsg.ForeColor = System.Drawing.Color.ForestGreen;
            Response.Write("<script>alert('Record Submitted Succesfully!!!!!!!');</script>");
        }
        else
        {
            lblmsg.Text = "Form not Submitted";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        con.Close();
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}




