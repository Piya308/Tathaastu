using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for SQLHelper
/// </summary>
public class SQLHelper
{
    public static SqlConnection GetConnectionString()
    {
        string strConnectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnectionString);
        return con;
    }
    public static bool ExecuteNonQuery(string strCmd)
    {
        try
        {
            using (SqlConnection con = GetConnectionString())
            {
                SqlCommand cmd = new SqlCommand(strCmd, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                return true;
            }
        }
        catch ( Exception ex)
        {

            throw ex;
        }
    }
    public static DataTable FillData(string SQL)
    {
        try
        {
            SqlConnection con;
            con = GetConnectionString();
            con.Open();
            string strCmd = SQL;
            SqlCommand cmd = new SqlCommand(strCmd, con);
            cmd.CommandTimeout = 0;
            SqlDataAdapter dtadp = new SqlDataAdapter();
            dtadp.SelectCommand = cmd;
            DataTable dt = new DataTable();
            dtadp.Fill(dt);
            con.Close();
            return dt; 
    }
        catch (Exception ex)
        {

            throw ex;
        }
    }
   
}