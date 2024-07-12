using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using com.toml.dp.util;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Text;
/// <summary>
/// Summary description for BasicCode
/// </summary>
public class BasicCode
{
    //public static string EncodedKey = "8HF6K2eloDebD9ikXQmsig==";
    //public static string merchantid = "1000003"; //1001574

    public static string EncodedKey = "0nXZK4So/C3jJouAnX8QnQAlSRKB6I6hBuNpGvFWCoA=";
    public static string merchantid = "1001574"; //1001574

    //public static string successUrl = "http://localhost:2104/Sample%20Files/Success.aspx?oid=";
    //public static string failUrl = "http://localhost:2104/Sample%20Files/Error.aspx?oid=";

    public static string successUrl = "https://payment.gvish.org/SuccessRegistration.aspx?oid=";
    public static string failUrl = "https://payment.gvish.org/Error.aspx?oid=";

    public static string successUrl_exam = "https://payment.gvish.org/SuccessExamFee.aspx?oid=";


	public BasicCode()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void SaveTransaction(int reg_order_no, string registration_no, string full_name, string mobile, string course, string year, string bank_ref_no, string trans_date, int amount, string pay_status, string fee_type, string enrollment_no)
    {
        SqlConnection con;
        SqlCommand cmd;
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "insert into TransactionDetailsData(reg_order_no, registration_no, full_name, mobile, course, year, bank_ref_no, trans_date, amount, pay_status,fee_type,enrollment_no)Values(@reg_order_no,@registration_no, @full_name,@mobile, @course, @year, @bank_ref_no, @trans_date, @amount, @pay_status,@fee_type,@enrollment_no)";
        cmd.Parameters.AddWithValue("@reg_order_no", reg_order_no);
        cmd.Parameters.AddWithValue("@registration_no", registration_no);
        cmd.Parameters.AddWithValue("@full_name", full_name);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        cmd.Parameters.AddWithValue("@course", course);
        cmd.Parameters.AddWithValue("@year", year);
        cmd.Parameters.AddWithValue("@bank_ref_no", bank_ref_no);
        cmd.Parameters.AddWithValue("@trans_date", trans_date);
        cmd.Parameters.AddWithValue("@amount", amount);
        cmd.Parameters.AddWithValue("@pay_status", pay_status);
        cmd.Parameters.AddWithValue("@fee_type", fee_type);
        cmd.Parameters.AddWithValue("@enrollment_no", enrollment_no);


        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
    }


    public string generateID(string col, string tbl)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);

        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select " + col + " from  " + tbl + " order by " + col + " desc";
        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        con.Close();
        if (obj == null)
        {
            return "1";
        }
        else
        {
            int n = Convert.ToInt32(obj);
            n = n + 1;
            return n.ToString();
        }
    }

    public void SendSmsGVISH(string senderid, string mob, string msg)
    {
        string username = "vmvcollege";
        string pwd = "Vmv@123";
        //string requestid = "494";

        try
        {
            string URL = "http://45.114.143.189/api/mt/SendSMS?username=" + username + "&password=" + pwd + "&senderid=" + senderid + "&type=0&destination=" + mob + "&text=" + msg + "&peid=1301164154337890769";

            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(URL);
            HttpWebResponse resp = (HttpWebResponse)req.GetResponse();
            StreamReader sr = new StreamReader(resp.GetResponseStream());
            string results = sr.ReadToEnd();
            Console.Write(results);
            sr.Close();

        }
        catch (SystemException ex)
        {

        }

    }

    public string getCourse(string regno)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);

        con.Open();
        cmd.CommandText = "select course from CourseStudentData where registration_no=@rno ";
        cmd.Parameters.AddWithValue("@rno", regno);
        cmd.Connection = con;
        Object obj = cmd.ExecuteScalar();

        con.Close();
        if (obj == null)
        {
            return obj.ToString();
        }
        else
        {
            return obj.ToString();
        }

    }

    public void SendSms(string senderid, string mob, string msg)
    {
        string username = "litsbros";
        string pwd = "12345678";
        //string requestid = "494";

        try
        {
            string URL = "http://45.114.143.189/api/mt/SendSMS?username=" + username + "&password=" + pwd + "&senderid=" + senderid + "&type=0&destination=" + mob + "&text=" + msg + "&peid=1701162948284863494";

            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(URL);
            HttpWebResponse resp = (HttpWebResponse)req.GetResponse();
            StreamReader sr = new StreamReader(resp.GetResponseStream());
            string results = sr.ReadToEnd();
            sr.Close();

        }
        catch (SystemException ex)
        {

        }
    }

    //public void SendSmsGVISH(string senderid, string mob, string msg)
    //{
    //    //string username = "vmvcollege";
    //    //string pwd = "Vmv@123";
    //    //string requestid = "494";

    //    try
    //    {
    //        string URL = "http://45.114.143.189/api/mt/SendSMS?username=vmvcollege&password=Vmv@123&senderid=GVISHA&type=0&destination=" + mob + "&text=" + msg + "&peid=1301164154337890769";

    //        HttpWebRequest req = (HttpWebRequest)WebRequest.Create(URL);
    //        HttpWebResponse resp = (HttpWebResponse)req.GetResponse();
    //        StreamReader sr = new StreamReader(resp.GetResponseStream());
    //        string results = sr.ReadToEnd();
    //        sr.Close();

    //    }
    //    catch (SystemException ex)
    //    {

    //    }

    //}



    //public void send(string to, string subject, string body)
    //{
    //    //StreamReader reader = new StreamReader(Microsoft.SqlServer.Server.MapPath("~/MailBody.htm"));
    //    //string readFile = reader.ReadToEnd();
    //    string myString = "";
    //    //  myString = readFile;
    //    //myString = myString.Replace("$$Admin$$", "Suresh Dasari");
    //    //myString = myString.Replace("$$CompanyName$$", "Dasari Group");
    //    //myString = myString.Replace("$$Email$$", "suresh@gmail.com");


    //    //string to = Session["username"].ToString();
    //    string from = "mycollegeproject02@gmail.com";
    //    //string subject = "Result";
    //    //string body = "YOUR RESULT IS  TOTAL MARKS : 20 OBTAINED MARKS :'" + lblmarks.Text + "'";
    //    using (MailMessage mm = new MailMessage(from, to))
    //    {
    //        mm.Subject = subject;
    //        mm.Body = body;
    //        //if (fuAttachment.HasFile)
    //        //{
    //        //    string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
    //        //    mm.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
    //        //}
    //        mm.IsBodyHtml = false;
    //        SmtpClient smtp = new SmtpClient();
    //        smtp.Host = "smtp.gmail.com";
    //        smtp.EnableSsl = true;
    //        NetworkCredential NetworkCred = new NetworkCredential("onlineadmissiongvish@gmail.com", "9503351933");
    //        smtp.UseDefaultCredentials = true;
    //        smtp.Credentials = NetworkCred;
    //        smtp.Port = 587;
    //        smtp.Send(mm);
    //        //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
    //    }
    //}

    public string createPassword()
    {
        string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
        string numbers = "1234567890";

        string characters = numbers;
        characters += alphabets + small_alphabets + numbers;
        int length = 6;
        string otp = string.Empty;
        for (int i = 0; i < length; i++)
        {
            string character = string.Empty;
            do
            {
                int index = new Random().Next(0, characters.Length);
                character = characters.ToCharArray()[index].ToString();
            } while (otp.IndexOf(character) != -1);
            otp += character;
        }

        return otp;

    }


}