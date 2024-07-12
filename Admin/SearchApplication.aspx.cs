using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_SearchApllication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        RepeatInformation.Visible = false;
        if (ddlSelect.SelectedIndex == 0)
        {

        }
        else if (ddlSelect.SelectedItem.Text == "customer Name")
        {
            RepeatInformation.Visible = true;


        
         }
        if (ddlSelect.SelectedItem.Text == "Services")
        {
            RepeatInformation.Visible = true;



        }


    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

        SqlDataSource1.SelectCommand = "Select * from Service_RequestData";

       
     
        if (ddlSelect.SelectedItem.Text == "customer Name")
        {

            SqlDataSource1.SelectCommand = "SELECT [id], [customer_name], [mobile_no], [email_id], [services], [payment_mode], [date], [status] FROM [Service_RequestData] where customer_name LIKE'%" + txtText.Text + "%'";
        }
        if (ddlSelect.SelectedItem.Text == "Services")
        {

            SqlDataSource1.SelectCommand = "SELECT [id], [customer_name], [mobile_no], [email_id], [services], [payment_mode], [date], [status] FROM [Service_RequestData] where services LIKE'%" + txtText.Text + "%'";
        }

    }
}