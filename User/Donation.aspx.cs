using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Donation : System.Web.UI.Page
{
    public int ProductID { get; private set; }
    public string ProductName { get; private set; }
    public int Qty { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            txtDate.Text = DateTime.Now.ToString("MM-dd-yyyy");
        }
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("/User/UserDefault.aspx");
    }

   
           private void Loadgv()
          {
              GridView1.DataSource=MyCart.GetCart();
              GridView1.DataBind();
                 //cart totalQty
                 int Qty = 0;
                 MyCart.CalculateTotalQty(out Qty);
                 lblTotalQty.Text = Qty.ToString();
          }
    

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="Del")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            string ID = GridView1.Rows[index].Cells[0].Text;
            MyCart.RemoveItem(Convert.ToInt32(ID));
            Loadgv();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            String strGUID = Guid.NewGuid().ToString();
            //Insert parent
          
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        if (txtQty.Text == "0")
        {
            lblMsg.Text = "Invalid Quantity";
            txtQty.Focus();
            return;
        }
        try
        {
            if (FileUpload1.HasFile)
            {
                string strPic = "";
                string strFile = FileUpload1.PostedFile.FileName;
                string strMIME = Path.GetExtension(strFile);
                if (strMIME.ToLower() == ".jpeg" || strMIME.ToLower() == ".jpg" || strMIME.ToLower() == ".bmp" || strMIME.ToLower() == ".png")
                {
                    string strFilePath = Server.MapPath("~//Files//");
                    string strUsername = Guid.NewGuid().ToString();
                    if (!Directory.Exists(strFilePath + strUsername))
                    {
                        Directory.CreateDirectory(strFilePath + strUsername);
                    }
                    else
                    {
                        foreach (string file in Directory.GetFiles(strFilePath + strUsername))
                        {
                            File.Delete(file);
                        }
                    }
                    string strVFilePath = "~//Files//" + strUsername + "//";
                    string strFileNameOnly = Path.GetFileName(FileUpload1.FileName);
                    strPic = strVFilePath + strFileNameOnly;
                    strFilePath = Server.MapPath("~//Files//" + strUsername + "//");
                    FileUpload1.SaveAs(strFilePath + FileUpload1.FileName);//save file to folder
                    Product p = new Product()
                    {
                        Pic = strPic,
                        ProductID = Convert.ToInt32(ddlCategory.SelectedValue),
                        ProductName = ddlCategory.SelectedItem.Text,
                        Qty = Convert.ToInt32(txtQty.Text)
                    };
                    MyCart.AddToCart(p);
                    Loadgv();
                }
                else
                {
                    Response.Write("<script>alert('Select only Images')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Upload an Image')</script>");
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}