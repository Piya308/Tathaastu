using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_NGOList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
    

        try
        {
            //to check username is exist or not 

            string strcmd = "SELECT NGOID,NGOEmail" +
                            " FROM   NGO " +
                            " WHERE(NGOEmail = '" + txtEmail.Text + "') ";

            DataTable dt = new DataTable();
            dt = SQLHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                //username already exist
                lblMsg.Text = "username is not available!";
            }
            else
            {
                //create User
                strcmd = "INSERT INTO NGO" +
                        " (NGOName, NGOEmail,RoleID, NGOMobile, RegNo, SectorID, NGOTypeID, StateID, DistrictID, NGOPassword,NGOSecQue, NGOSecAns,NGOAddress,Approve, NGODated, NGOActive) " +
                        "  VALUES(";
                strcmd += "'" + txtNGOName.Text + "',";
                strcmd += "'" + txtEmail.Text + "',";
                strcmd += "3,";
                strcmd += "'" + txtMobile.Text + "',";
                strcmd += "'" + txtRegNo.Text + "',";
                strcmd += "'" + ddlSector.Text + "',";
                strcmd += "'" + ddlNGOType.Text + "',";
                strcmd += "'" + ddlStates.Text + "',";
                strcmd += "'" + ddlDistricts.Text + "',";
                strcmd += "'" + txtPassword.Text + "',";
                strcmd += "'" + ddlSecQue.Text + "',";
                strcmd += "'" + txtSecAns.Text + "',";
                strcmd += "'" + txtAddress.Text + "',";
                strcmd += "0,"; //0= pending,1=approved,2=Rejected
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
