using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class User_EditCustomer : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    int num = 1;
    string file;
    public void showuser()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "select customer_name,mobile_no,email_id,aadhar_card_photo,votar_card_photo,pan_card_photo,bank_id_photo,ration_card_photo,passport_photo,driving_license_photo,tc_photo,photo from Service_RequestData where id=" + Request.QueryString["id"].ToString();
        cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtcustomer.Text = dr.GetString(0);
            txtno.Text = dr.GetString(1);
            txtmail.Text = dr.GetString(2);
            imgadhar.ImageUrl = "Document/adhar_card/" + dr.GetString(3);
            imgvotar.ImageUrl = "Document/voter_id_card/" + dr.GetString(4);
            imgpan.ImageUrl = "Document/pan_card/" + dr.GetString(5);
            imgbank.ImageUrl = "Document/Bank_id/" + dr.GetString(6);
            imgration.ImageUrl = "Document/Ration_card/" + dr.GetString(7);
            imgpassort.ImageUrl = "Document/passport/" + dr.GetString(8);
            imglicense.ImageUrl = "Document/driving_license/" + dr.GetString(9);
            imgtc.ImageUrl = "Document/TC/" + dr.GetString(10);
            imgphoto.ImageUrl = "Document/user_photo/" + dr.GetString(11);

        }
        else
        {
            txtcustomer.Text = "";

        }
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            showuser();
        }


    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "update Service_RequestData set customer_name=@cn where id=" + Request.QueryString["id"].ToString();

        cmd.Parameters.AddWithValue("@cn", txtcustomer.Text);
        //cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
        cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {

            lblmsg.Text = "Record Update succesfully";
            lblmsg.ForeColor = System.Drawing.Color.ForestGreen;
        }
        else
        {
            lblmsg.Text = "Record not updated";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        con.Close();
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        //List<string> uploadedFiles = new List<string>();
        //if (Session["UploadedFiles"] != Server.MapPath("~/Document/")) ;


        string uploadFolderPath = Server.MapPath("~/Document/");

        if (FUadhar.HasFile)
        {
            string fileName = FUadhar.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUadhar.FileName);
            string file = "adhar_card_" + id + ext;
            FUadhar.PostedFile.SaveAs(Server.MapPath("Document/adhar_card/") + file);
            hfuadhar.Value = file;
        }
        else
        {
            Label1.Text = " Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        if (FUvotar.HasFile)
        {
            string fileName = FUvotar.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUvotar.FileName);
            string file = "voter_id_card_" + id + ext;
            FUvotar.PostedFile.SaveAs(Server.MapPath("Document/voter_id_card/") + file);
            hfuvotar.Value = file;
        }
        else
        {
            Label1.Text = " Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }



        if (FUpan.HasFile)
        {
            string fileName = FUpan.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUpan.FileName);
            string file = "pan_card_" + id + ext;
            FUpan.PostedFile.SaveAs(Server.MapPath("Document/pan_card/") + file);
            hfupan.Value = file;
        }
        else
        {
            Label1.Text = " Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
        if (FUbank.HasFile)
        {
            string fileName = FUbank.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUbank.FileName);
            string file = "Bank_id_" + id + ext;
            FUbank.PostedFile.SaveAs(Server.MapPath("Document/Bank_id/") + file);
            hfubank.Value = file;
        }
        else
        {
            Label1.Text = " Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }

        if (FUration.HasFile)
        {
            string fileName = FUration.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUration.FileName);
            string file = "Ration_card_" + id + ext;
            FUration.PostedFile.SaveAs(Server.MapPath("Document/Ration_card/") + file);
            hfuration.Value = file;
        }
        else
        {
            Label1.Text = " Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        if (FUpassport.HasFile)
        {
            string fileName = FUpassport.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUpassport.FileName);
            string file = "passport_" + id + ext;

            FUpassport.PostedFile.SaveAs(Server.MapPath("Document/passport/") + file);
            hfupass.Value = file;
        }
        else
        {
            Label1.Text = " Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        if (FUlicense.HasFile)
        {
            string fileName = FUlicense.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUlicense.FileName);
            string file = "driving_license_" + id + ext;
            FUlicense.PostedFile.SaveAs(Server.MapPath("Document/driving_license/") + file);
            hfulicense.Value = file;
        }
        else
        {
            Label1.Text = " Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        if (FUtc.HasFile)
        {
            string fileName = FUtc.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUtc.FileName);
            string file = "TC_" + id + ext;
            FUtc.PostedFile.SaveAs(Server.MapPath("Document/TC/") + file);
            hfutc.Value = file;
        }
        else
        {
            Label1.Text = " Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        if (FUphoto.HasFile)
        {
            string fileName = FUphoto.FileName;
            string id = b.generateID("id", "Service_RequestData");
            string ext = System.IO.Path.GetExtension(FUphoto.FileName);
            string file = "user_photo_" + id + ext;
            FUphoto.PostedFile.SaveAs(Server.MapPath("Document/user_photo/") + file);
            hfuphot.Value = file;
        }
        else
        {
            Label1.Text = " Please Select your file";
            Label1.ForeColor = System.Drawing.Color.Red;
        }


        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "update  Service_RequestData set aadhar_card_photo=@ap,votar_card_photo=@vp,pan_card_photo=@pp,bank_id_photo=@bp,ration_card_photo=@rp,passport_photo=@ps,driving_license_photo=@dp,tc_photo=@tcp,photo=@ph where id=" + Request.QueryString["id"].ToString();


        cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());

        cmd.Parameters.AddWithValue("@ap", hfuadhar.Value);
        cmd.Parameters.AddWithValue("@vp", hfuvotar.Value);
        cmd.Parameters.AddWithValue("@pp", hfupan.Value);
        cmd.Parameters.AddWithValue("@bp", hfubank.Value);
        cmd.Parameters.AddWithValue("@rp", hfuration.Value);
        cmd.Parameters.AddWithValue("@ps", hfupass.Value);
        cmd.Parameters.AddWithValue("@dp", hfulicense.Value);
        cmd.Parameters.AddWithValue("@tcp", hfutc.Value);
        cmd.Parameters.AddWithValue("@ph", hfuphot.Value);
        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {

            Label1.Text = "Photo Uploaded succesfully";
        }
        else
        {
            Label1.Text = "Photo not Uploaded";
        }
        con.Close();
    }

}

    