using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdateProfile_Click(object sender, EventArgs e)
    {
        try
        {

            MultiView1.ActiveViewIndex = 1;
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
}