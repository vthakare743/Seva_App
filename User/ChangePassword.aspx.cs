using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class User_ChangePassword : System.Web.UI.Page
{
    string pwd = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        BasicCode b = new BasicCode();

        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        cn.Open();

        if (txtMobile.Text == "")
        {
            cmd.CommandText = "select mobile_no,pwd from UserRegistration where id=@id and email_id=@email_id";
            cmd.Parameters.AddWithValue("@email_id", txtEmail.Text);
        }
        else
        {
            cmd.CommandText = "select mobile_no,pwd from UserRegistration where id=@id and mobile_no=@mobile_no";
            cmd.Parameters.AddWithValue("@mobile_no", txtMobile.Text);
        }

        cmd.CommandText = "select mobile_no,pwd from UserRegistration where id=@id and id=@id";
        cmd.Parameters.AddWithValue("@id", txtRegistrationNo.Text);
        cmd.Connection = cn;

        Object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            lblmsg.Text = "You entered wrong details !";
        }
        else
        {
            pwd = obj.ToString();

            if (txtMobile.Text == "")
            {
                // if mobile number is not given then email will sent
                //SendHTMLMail();
                //lblmsg.Text = "Password is sent on your registered Email ID.";
                string msg = "Your Login Deatails are : %0a id : " + txtRegistrationNo.Text + " %0a password : " + pwd + "%0a Do not share with anyone.";
                b.SendSms("SevaApp", txtMobile.Text, msg);
                lblmsg.Text = "Password is sent on your registered mobile number.";
            }
            else
            {

                // SMS Code
                string msg = "Your Login Deatails are : %0a id : " + txtRegistrationNo.Text + " %0a password : " + pwd + "%0a Do not share with anyone.";
                b.SendSms("SevaApp", txtMobile.Text, msg);

                lblmsg.Text = "Password is sent on your registered mobile number.";
            }

        }

        cn.Close();

        txtEmail.Text = "";
        txtMobile.Text = "";
        txtRegistrationNo.Text = "";

    }


    //public void SendHTMLMail()
    //{


    //    StreamReader reader = new StreamReader(Server.MapPath("~/MailBody.htm"));
    //    string readFile = reader.ReadToEnd();
    //    string myString = "";
    //    myString = readFile;
    //    myString = myString.Replace("$$Username$$", txtRegistrationNo.Text);
    //    myString = myString.Replace("$$Password$$", pwd);

    //    // myString = myString.Replace("$$Website$$", "Creadit Card Fraud Detection");
    //    MailMessage Msg = new MailMessage();

    //    MailAddress fromMail = new MailAddress("onlineadmissiongvish@gmail.com");
    //    // Sender e-mail address.
    //    Msg.From = fromMail;
    //    // Recipient e-mail address.
    //    Msg.To.Add(new MailAddress(txtEmail.Text));
    //    // Subject of e-mail
    //    Msg.Subject = "Login Creadential From GVISH Amravati Admission Process";
    //    Msg.Body = myString.ToString();
    //    Msg.IsBodyHtml = true;

    //    SmtpClient smtp = new SmtpClient();
    //    smtp.Host = "smtp.gmail.com";
    //    smtp.EnableSsl = true;
    //    NetworkCredential NetworkCred = new NetworkCredential("onlineadmissiongvish@gmail.com", "9503351933");
    //    smtp.UseDefaultCredentials = true;
    //    smtp.Credentials = NetworkCred;
    //    smtp.Port = 587;
    //    smtp.Send(Msg);

    //    reader.Dispose();
    //}

}