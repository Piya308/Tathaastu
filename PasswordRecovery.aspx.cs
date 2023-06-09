using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class PasswordRecovery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btntoSecQue_Click(object sender, EventArgs e)
    {
        //to chech whether username exist
        try
        {
            string strcmd = "select UserID,SecQue,Active" +
                            " From Users " +
                            " Where(UserEmail ='"+txtUsername.Text+"'); ";
            DataTable dt = new DataTable();
            dt = SQLHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                bool isActive = Convert.ToBoolean(dt.Rows[0]["Active"]);
                if(isActive)
                {
                    hdfUserID.Value = dt.Rows[0]["UserID"].ToString();
                    lblShowSecQue.Text = dt.Rows[0]["SecQue"].ToString();
                    MultiView1.ActiveViewIndex = 1;
                }
                else
                {
                    Response.Write("<script>alert('Account is disabled by administrator')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Username')</script>");
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    protected void btnShowPass_Click(object sender, EventArgs e)
    {
        //to check security answer
        try
        {
            string strcmd = "SELECT UPassword, SecAns"+
                            " FROM Users "+
                            " WHERE(UserID ="+hdfUserID.Value+") and SecAns='"+txtSecAns.Text+"'";
            DataTable dt = new DataTable();
            dt = SQLHelper.FillData(strcmd);
            if(dt.Rows.Count>0)
            {
                lblShowPass.Text = dt.Rows[0]["UPassword"].ToString();
                MultiView1.ActiveViewIndex = 2;
            }
            else
            {
                Response.Write("<script>alert('Incorrect Security Answer')</script>");
                
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
}