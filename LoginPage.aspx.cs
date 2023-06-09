using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  
  
    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        try
        {
            string strcmd = "SELECT Roles.RoleName, Users.FullName, Users.RoleID, Users.UPassword, Users.UserID, Users.Active" +
                            " FROM   Roles INNER JOIN " +
                             " Users ON Roles.RoleID = Users.RoleID " +
                             " WHERE(Users.UserEmail ='" + txtUsername.Text + "')";
            DataTable dt = new DataTable();
            dt = SQLHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                bool isActive = Convert.ToBoolean(dt.Rows[0]["Active"]);
                if (isActive)
                {
                    string strPassword = dt.Rows[0]["UPassword"].ToString();//bcoz its varchar
                    if (txtPassword.Text == strPassword)
                    {
                        Session["UserID"] = dt.Rows[0]["UserID"].ToString();//executed query has only one row (depends)
                        Session["FullName"] = dt.Rows[0]["FullName"].ToString();
                        Session["RoleID"] = dt.Rows[0]["RoleID"].ToString();
                        Session["RoleName"] = dt.Rows[0]["RoleName"].ToString();
                        /*
                         1 Admin
                         2 User
                         3 NGO
                        */
                        if (Session["RoleID"].ToString() == "1")
                        {
                            Response.Redirect("~/Admin/AdminDefault.aspx");
                        }
                        else if (Session["RoleID"].ToString() == "2")
                        {
                            Response.Redirect("~/User/UserDefault.aspx");
                        }
                        else
                        {
                            Response.Redirect("~/NGO/NGODefault.aspx");
                        }
                    }
                    else
                    {
                        hypFrgPass.Enabled = true;
                        lblIncorrectPass.Text = "Incorrect Password*";
                    }
                }
                else
                {
                    Response.Write("<script>alert('Account Disabled By Administrator')</script>");
                }
            }
            else
            {
                //invalid User
                lblInvalid.Text = "Invalid Email*";
            }

        }
        catch (Exception ex)
        {

            throw ex;
        }

    }
}

