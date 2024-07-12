using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data.SqlClient;
//using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    //SqlConnection con;
    //SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection con;
        //SqlCommand cmd;
        //con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //cmd = new SqlCommand();
        //con.Open();
        //cmd.CommandText = "Select Name,email_id from ResultSectionmaster where name=@name and email_id=@email_id";
        //cmd.Parameters.AddWithValue("name",Session["name"].ToString());
        //cmd.Parameters.AddWithValue("email_id", Session["email_id"].ToString());
        //cmd.Connection = con;
        //SqlDataReader dr = cmd.ExecuteReader();
        //while (dr.Read())
        //{
        //    lblname.Text=dr.GetString(0);
        //}
        //con.Close();
    }
}
