using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_SearchAgent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        RepeatInformation.Visible = false;
        if (ddlSelect.SelectedIndex == 0)
        {

        }
        else if (ddlSelect.SelectedItem.Text == "Agent Name")
        {
            RepeatInformation.Visible = true;



        }
        if (ddlSelect.SelectedItem.Text == "Mobile No")
        {
            RepeatInformation.Visible = true;



        }
   

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "Select * from AgentRegistration";



        if (ddlSelect.SelectedItem.Text == "Agent Name")
        {

            SqlDataSource1.SelectCommand = "SELECT [aid], [first_name], [middle_name], [last_name], [mobile_no], [email_id], [date] FROM [AgentRegistration] where first_name LIKE'%" + txtText.Text + "%'";
        }
        if (ddlSelect.SelectedItem.Text == "Mobile No")
        {

            SqlDataSource1.SelectCommand = "SELECT [aid], [first_name], [middle_name], [last_name], [mobile_no], [email_id], [date] FROM [AgentRegistration] where first_name LIKE'%" + txtText.Text + "%'";
        }

    }
}