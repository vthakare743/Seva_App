using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class User_Demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlDataGetService.SelectCommand ="Select * from Service_RequestData where id='"  + Request.QueryString["id"].ToString();
    }
}