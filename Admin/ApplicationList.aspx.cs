using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Admin_Apploication_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("ApplicationStatus.aspx?id=" + GridView1.SelectedRow.Cells[3].Text);
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string status = e.Row.Cells[0].Text;
            if (status == "Done")
            {
                e.Row.BackColor = System.Drawing.Color.FromArgb(88, 214, 141);
                e.Row.ForeColor = System.Drawing.Color.White;
            }
            else if (status == "Pending")
            {
                e.Row.BackColor = System.Drawing.Color.FromArgb(241, 196, 15);
                e.Row.ForeColor = System.Drawing.Color.White;
            }
        }
    }
}