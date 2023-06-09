<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ActivationEmail.aspx.cs" Inherits="ActivationEmail" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
    <center>
                    <label style="font-weight: bold; font-family: 'Courier New', Courier, monospace; font-size: 40px;">
                    <br />
                    E-mail Verification</label>
                </center>
                
                <br />
               <center>
                    <table class="auto-style9">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                <br />
                            </td>
                                
                        </tr>
                    <tr>
                        <td class="text-right">
                            <label>
                                Activation Code:
                            </label> 
                        </td>
                 <td class="text-left">
                     <asp:TextBox ID="txtVerify" runat="server" CssClass="form-control"></asp:TextBox>
                     <cc1:TextBoxWatermarkExtender ID="txtVerify_TextBoxWatermarkExtender" runat="server" BehaviorID="txtVerify_TextBoxWatermarkExtender" TargetControlID="txtVerify" WatermarkText="Enter Your Activation Code" />
                </td>
                        </tr>
                  <tr>
                <td>&nbsp;</td>
                <td class="text-center">
                    <asp:Button ID="btnVerify" runat="server" Text="Verify Email" CssClass="btn btn-info" OnClick="btnVerify_Click" style="height: 46px" />
                </td>
                  </tr>
               </table>
                    <asp:Label ID="lblEmailVerified" runat="server"></asp:Label>
                    <br />
               </center>
        <center> <asp:HyperLink ID="hypNext" runat="server" NavigateUrl="~/NGOReg.aspx" Visible="False">Next</asp:HyperLink></center>
    </div>
    </form>
</body>
</html>
