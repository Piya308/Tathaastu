using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnNGoApprove_Click(object sender, EventArgs e)
    {
        Response.Redirect("NGOApprove.aspx");
    }

    protected void btnUserLst_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserList.aspx");
    }

    protected void btnNGOlst_Click(object sender, EventArgs e)
    {
        Response.Redirect("NGOList.aspx");
    }
}
