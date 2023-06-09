using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtFullName.Text = "";
        txtEmail.Text = "";
        txtMobile.Text = "";
        txtPassword.Text = "";
        txtSecAns.Text = "";
        ddlSecQue.SelectedIndex = 0;
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        try
        {
            //to check User whether UserID already exist
            string strcmd = "SELECT UserID, UserEmail" +
                          " FROM   Users " +
                           " WHERE(UserEmail = '" + txtEmail.Text + "')";
            DataTable dt = new DataTable();
            dt = SQLHelper.FillData(strcmd);
            if (dt.Rows.Count < 0)
            {
                //username already exist
                lblAlreadyExist.Text = "User already exist!";
            }
            else
            {
                //create user
                strcmd = "INSERT INTO Users" +
                        " (UserEmail, UPassword, UserMobile, RoleID, FullName, SecQue, SecAns, Dated, Active) " +
                        " VALUES(";
                strcmd += "'" + txtEmail.Text + "',";
                strcmd += "'" + txtPassword.Text + "',";
                strcmd += "'" + txtMobile.Text + "',";
                strcmd += "2,";
                strcmd += "'" + txtFullName.Text + "',";
                strcmd += "'" + ddlSecQue.Text + "',";
                strcmd += "'" + txtSecAns.Text + "',";
                strcmd += "'" + DateTime.Now.ToString("MM-dd-yyyy") + "',";
                strcmd += "1)";
                SQLHelper.ExecuteNonQuery(strcmd);
                MultiView1.ActiveViewIndex = 1;
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
}


   