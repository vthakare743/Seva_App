using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
        }
    
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        if (ddltype.SelectedValue == "User")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
           
            cmd.CommandText = "select id from UserRegistration where user_id=@u and pwd=@p";
            cmd.Parameters.AddWithValue("@u", txtuser.Text.Trim());
            cmd.Parameters.AddWithValue("@p", txtpwd.Text.Trim());
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("id", dr.GetInt32(0));
                Session.Add("pwd", txtpwd.Text);
                Session.Add("user_id", txtuser.Text);

                Response.Redirect("User/Default.aspx");
                Response.Write("<script>alert('Login Successfully!!!!!!');</script>");
            }

            else
            {

                lblmsg.Text = "Invalid Username and Password !";
            }
            con.Close();
        }
        if (ddltype.SelectedValue == "User")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();

            cmd.CommandText = "select id from UserRegistration where user_id=@u and pwd=@p";
            cmd.Parameters.AddWithValue("@u", txtuser.Text.Trim());
            cmd.Parameters.AddWithValue("@p", txtpwd.Text.Trim());
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("id", dr.GetInt32(0));
                Session.Add("pwd", txtpwd.Text);
                Session.Add("user_id", txtuser.Text);
                Response.Write("<script>alert('Login Successfully!!!!!!');</script>");
            }

            else
            {

                lblmsg.Text = "Invalid Username and Password !";
            }
            con.Close();
        }
        if (ddltype.SelectedValue == "Agent")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();

            cmd.CommandText = "select aid from AgentRegistration where agent_name=@a and pwd=@p";
            cmd.Parameters.AddWithValue("@a", txtuser.Text.Trim());
            cmd.Parameters.AddWithValue("@p", txtpwd.Text.Trim());
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("aid", dr.GetInt32(0));
                Session.Add("pwd", txtpwd.Text);
                Session.Add("agent_name", txtuser.Text);
                Response.Redirect("Agent_Pannel/Default.aspx");
                Response.Write("<script>alert('Login Successfully!!!!!!');</script>");
            }

            else
            {

                lblmsg.Text = "Invalid Username and Password !";
            }
            con.Close();
        }
        if (txtuser.Text == "admin" && txtpwd.Text == "super")
        {
            Session.Add("username", txtuser.Text);
            Response.Redirect("Admin/Default.aspx");
            Response.Write("<script>alert('Admin Login Successfully!!!!!!');</script>");
        }
        else
        {
            lblmsg.Text = "Invalid Username and Password !";
        }
    }
}
     