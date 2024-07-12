using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class User_servicelistDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource2.SelectCommand = "Select * from Service_RequestData where id='"  + Request.QueryString["id"].ToString()+"'";
    }
       // SqlDataSource2.SelectCommand = "Select * from Service_RequestData where id='" + Session["id"].ToString() + "'";
    
}

 