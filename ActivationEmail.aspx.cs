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

public partial class ActivationEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       lblEmail.Text= "Dear &nbsp;"+ Request.QueryString["name"].ToString() +"&nbsp;,Kindly Check Your Mail Inbox for Activation Code";
    }

    protected void btnVerify_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=DESKTOP-6K62RP2\\PURVA;Initial Catalog=Tathaastu;User ID=sa;Password=Purva@1804";
        string myquery = "select * from EmailVerification where emailaddress='" + Request.QueryString["emailadd"] + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter dt = new SqlDataAdapter();
        dt.SelectCommand = cmd;
        DataSet ds = new DataSet();
        dt.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string activationcode;
            activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
            if (activationcode == txtVerify.Text)
            {
                ChangeStatus();
                lblEmailVerified.Text = "Your Email has been verified sucessfully!";
                hypNext.Visible = true;
            }
            else
            {
                lblEmailVerified.Text = "You have entered Invalid Activation code,Kindly check your Mail Inbox";
            }
        }
        con.Close();
        
    }
    private void ChangeStatus()
    {
        string mycon = "Data Source=DESKTOP-6K62RP2\\PURVA;Initial Catalog=Tathaastu;User ID=sa;Password=Purva@1804";
        string UpdateData = "Update EmailVerification set status='Verified' where emailaddress='" + Request.QueryString["emailadd"] + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = UpdateData;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
}