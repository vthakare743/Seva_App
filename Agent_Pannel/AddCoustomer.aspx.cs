using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;
using System.IO;


public partial class Agent_Pannel_AddCoustomer : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    BasicCode b = new BasicCode();
    int num = 1;
    string file;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (FUadhar.HasFile)
        {
            string fileName = FUadhar.FileName;
            string id = b.generateID("id", "Add_Coustomer");
            string ext = System.IO.Path.GetExtension(FUadhar.FileName);
            string file = "adhar_card_" + id + ext;
            FUadhar.PostedFile.SaveAs(Server.MapPath("~/User/Document/adhar_card/") + file);
            hfuadhar.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        if (FUvotar.HasFile)
        {
            string fileName = FUvotar.FileName;
            string id = b.generateID("id", "Add_Coustomer");
            string ext = System.IO.Path.GetExtension(FUvotar.FileName);
            string file = "voter_id_card_" + id + ext;
            FUvotar.PostedFile.SaveAs(Server.MapPath("~/User/Document/voter_id_card/") + file);
            hfuvotar.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }



        if (FUpan.HasFile)
        {
            string fileName = FUpan.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUpan.FileName);
            string file = "pan_card_" + id + ext;
            FUpan.PostedFile.SaveAs(Server.MapPath("~/User/Document/pan_card/") + file);
            hfupan.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;

        }
        if (FUbank.HasFile)
        {
            string fileName = FUbank.FileName;
            string id = b.generateID("id", "Add_Coustomer");
            string ext = System.IO.Path.GetExtension(FUbank.FileName);
            string file = "Bank_id_" + id + ext;
            FUbank.PostedFile.SaveAs(Server.MapPath("~/User/Document/Bank_id/") + file);
            hfubank.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }

        if (FUration.HasFile)
        {
            string fileName = FUration.FileName;
            string id = b.generateID("id", "Add_Coustomer");
            string ext = System.IO.Path.GetExtension(FUration.FileName);
            string file = "Ration_card_" + id + ext;
            FUration.PostedFile.SaveAs(Server.MapPath("~/User/Document/Ration_card/") + file);
            hfuration.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        if (FUpassport.HasFile)
        {
            string fileName = FUpassport.FileName;
            string id = b.generateID("id", "Add_Coustomer");
            string ext = System.IO.Path.GetExtension(FUpassport.FileName);
            string file = "passport_" + id + ext;

            FUpassport.PostedFile.SaveAs(Server.MapPath("~/User/Document/passport/") + file);
            hfupass.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        if (FUlicense.HasFile)
        {
            string fileName = FUlicense.FileName;
            string id = b.generateID("id", "Add_Coustomer");
            string ext = System.IO.Path.GetExtension(FUlicense.FileName);
            string file = "driving_license_" + id + ext;
            FUlicense.PostedFile.SaveAs(Server.MapPath("~/User/Document/driving_license/") + file);
            hfulicense.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        if (FUtc.HasFile)
        {
            string fileName = FUtc.FileName;
            string id = b.generateID("id", "Add_Coustomer");
            string ext = System.IO.Path.GetExtension(FUtc.FileName);
            string file = "TC_" + id + ext;
            FUtc.PostedFile.SaveAs(Server.MapPath("~/User/Document/TC/") + file);
            hfutc.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        if (FUphoto.HasFile)
        {
            string fileName = FUphoto.FileName;
            string id = b.generateID("id", "Add_Coustomer");
            string ext = System.IO.Path.GetExtension(FUphoto.FileName);
            string file = "user_photo_" + id + ext;
            FUphoto.PostedFile.SaveAs(Server.MapPath("~/User/Document/user_photo/") + file);
            hfuphot.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }


        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();

        cmd.CommandText = "Insert into Add_Coustomer(id,customer_name,mobile_no,email_id,date,services,aadhar_card_photo,votar_card_photo,pan_card_photo,bank_id_photo,ration_card_photo,passport_photo,driving_license_photo,tc_photo,photo,payment_mode,others,service_note)values(@id,@cn,@mn,@ei,@d,@s,@ad,@vo,@fp,@bp,@fr,@pso,@dl,@tc,@ph,@pm,@o,@sn)";
        cmd.Parameters.AddWithValue("@id", b.generateID("id", "Service_RequestData"));
        cmd.Parameters.AddWithValue("@cn", txtcustomer.Text);
        cmd.Parameters.AddWithValue("@mn", txtno.Text);
        cmd.Parameters.AddWithValue("@ei", txtmail.Text);
        cmd.Parameters.AddWithValue("@d", txtdate.Text);
        cmd.Parameters.AddWithValue("@s", ddlservices.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@ad", hfuadhar.Value);
        cmd.Parameters.AddWithValue("@vo", hfuvotar.Value);
        cmd.Parameters.AddWithValue("@fp", hfupan.Value);
        cmd.Parameters.AddWithValue("@bp", hfubank.Value);
        cmd.Parameters.AddWithValue("@fr", hfuration.Value);
        cmd.Parameters.AddWithValue("@pso", hfupass.Value);
        cmd.Parameters.AddWithValue("@dl", hfulicense.Value);
        cmd.Parameters.AddWithValue("@tc", hfutc.Value);
        cmd.Parameters.AddWithValue("@ph", hfuphot.Value);
        cmd.Parameters.AddWithValue("@pm", txtpaymode.Text);
        cmd.Parameters.AddWithValue("@o", txtothers.Text);
        cmd.Parameters.AddWithValue("@sn", snote.Text);

        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully!!!!!!');</script>");
        }
        //Session["username"] = txtusername.Text;
        txtcustomer.Text = " ";
        txtno.Text = "";
        txtmail.Text = "";
        txtdate.Text = "";
        ddlservices.SelectedItem.Text = " ";
        txtpaymode.Text = " ";
        txtothers.Text = " ";
        snote.Text = " ";


    }
}