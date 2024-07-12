using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class User_Wallet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlpay.SelectedIndex == 0)
        {
            
        }
        else if (ddlpay.SelectedIndex == 1)
        {
            Panel.Visible = true;
           

        }
        if (ddlpay.SelectedIndex == 2)
        {
            Panel.Visible = true;


        }
    }
}