using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for Commons
/// </summary>
public class Commons
{
    public static void ShowMsg(string strMsg)
    {
        HttpContext.Current.Response.Write("<script>alert('" + strMsg + "');</script>");
    }
    public static string GetConnectionString
    {
        get
        {
            string strCon = ConfigurationManager.ConnectionStrings["TathaastuCon"].ConnectionString;
            return strCon;
        }
    }
}