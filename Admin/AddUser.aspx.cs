using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UserList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
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
                strcmd += "'" + txtFullName + "',";
                strcmd += "'" + ddlSecQue.Text + "',";
                strcmd += "'" + txtSecAns.Text + "',";
                strcmd += "'" + DateTime.Now.ToString("MM-dd-yyyy") + "',";
                strcmd += "1)";
                SQLHelper.ExecuteNonQuery(strcmd);
                
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

}
