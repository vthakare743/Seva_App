using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class User_ServiceList : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //con.Open();
        //SqlCommand cmd = new SqlCommand();

        //cmd.CommandText = "Select  id_proof_photo,address_proof_photo,pan_card_photo,bank_id_photo,purchase_bill_photo,sales_bill_photo,photofrom Service_RequestData where id=@id";
        //cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
        //cmd.Connection = con;
        //object obj = cmd.ExecuteScalar();
        //con.Close();

        //con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //cmd = new SqlCommand();
        //con.Open();
        //cmd.CommandText = "select id_proof_photo,address_proof_photo,pan_card_photo,bank_id_photo,purchase_bill_photo,sales_bill_photo,photo from Service_RequestData where id=" + Request.QueryString["id"].ToString();
        //cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
        //cmd.Connection = con;
        //SqlDataReader dr = cmd.ExecuteReader();    
        //con.Close();

        //{
        //    SqlDataSource1.SelectCommand = "Select * from Service_RequestData where id=" + Request.QueryString["id"].ToString();
        //}
    }

    }

