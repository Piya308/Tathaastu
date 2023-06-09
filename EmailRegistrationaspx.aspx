<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmailRegistrationaspx.aspx.cs" Inherits="EmailRegistrationaspx" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <center>
                    <label style="font-weight: bold; font-family: 'Courier New', Courier, monospace; font-size: 40px;">
                    <br />
                    E-mail Verification<br />
                    </label>
                &nbsp;</center>
                <center>
                    <label style="color: #333333; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;padding-left:50px" class="auto-style14" >
                            Enter Your Credentials
                    </label>
                </center>
                <br />
               <center>
                    <table class="auto-style1">
                    <tr>
                        <td class="text-right">
                            <label>
                                NGO Name:
                            </label> 
                        </td>
                 <td class="text-left">
                     <asp:TextBox ID="txtNGOName" runat="server" CssClass="form-control"></asp:TextBox>
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNGOName" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     <cc1:FilteredTextBoxExtender ID="txtNGOName_FilteredTextBoxExtender" runat="server" BehaviorID="txtNGOName_FilteredTextBoxExtender" TargetControlID="txtNGOName" ValidChars="ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz" />
                     <cc1:TextBoxWatermarkExtender ID="txtNGOName_TextBoxWatermarkExtender" runat="server" BehaviorID="txtNGOName_TextBoxWatermarkExtender" TargetControlID="txtNGOName" WatermarkText="Enter NGO Name">
                     </cc1:TextBoxWatermarkExtender>
                     
                </td>
                        </tr>
                  <tr>
                <td class="text-right">
                            <label>
                                NGO Email:
                            </label> 
                        </td>
                      <td>
                          <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                          <cc1:TextBoxWatermarkExtender ID="txtEmail_TextBoxWatermarkExtender" runat="server" BehaviorID="txtEmail_TextBoxWatermarkExtender" TargetControlID="txtEmail" WatermarkText="Enter NGOs Email">
                          </cc1:TextBoxWatermarkExtender>
                           <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Email  In a Proper Format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                          <br />
                          <asp:Label ID="lblAlreadyExist" runat="server" ForeColor="Red"></asp:Label>
                      </td>
                      </tr>
                        <tr>
                            <td>&nbsp;</td>
                <td class="text-center">
                    <asp:Button ID="btnSendCode" runat="server" Text="Send Activation Code" CssClass="btn btn-info" OnClick="btnSendCode_Click" />
                </td>
                  </tr>
               </table>
                    <asp:Label ID="lblEmailVerified" runat="server"></asp:Label>
               </center>
    </form>
</body>
</html>
