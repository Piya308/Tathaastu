using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class EmailRegistrationaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    static string activationcode;
    protected void btnSendCode_Click(object sender, EventArgs e)
    {
                Random random = new Random();
                activationcode = random.Next(1001, 9999).ToString();
                string query = "insert into EmailVerification(cname,emailaddress,status,activationcode) values('" + txtNGOName.Text + "','" + txtEmail.Text + "','Unverified','" + activationcode + "')";
                string mycon = "Data Source=DESKTOP-6K62RP2\\PURVA;Initial Catalog=Tathaastu;User ID=sa;Password=Purva@1804";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                SendCode();
                Response.Redirect("ActivationEmail.aspx?name=" + txtNGOName.Text);
     }
    private void SendCode()
    {
        SmtpClient smtp = new SmtpClient("smtp.gmail.com",587);
        smtp.Credentials = new System.Net.NetworkCredential("tathaastu04@gmail.com", "Tathaastu_1804_Solapur@JuleSolapur");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Activation code To verify email Address";
        msg.Body = "Dear&nbsp" + txtNGOName.Text + ",Your Activation Code is " + activationcode + "\n\n\n Thanks & Regards \n Team Tathaastu";
        string toaddress = txtEmail.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Tathaastu<tathaastu04@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
}