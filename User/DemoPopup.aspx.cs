using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class User_DemoPopup : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    BasicCode b = new BasicCode();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        mpe.Show();
    }
}