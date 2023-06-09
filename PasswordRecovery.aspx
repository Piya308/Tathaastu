<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
  
    <title></title>
    <style type="text/css">
        .tbl1{
            margin-left:6%;
            margin-top:5%;
            height:100px;
            width:350px;
            height:126px;
        }
        .tbl2{
            margin-top:3%;
            width:auto;
            height:146px;
            margin-left:6%;
        }
        .auto-style1 {
            width: 100px;
            height: 91px;
        }
        .auto-style2 {
            height: 91px;
        }
        .auto-style3 {
            height: 49px;
        }
        .auto-style4 {
            -ms-flex-pack: end!important;
            justify-content: flex-end!important;
            height: 49px;
        }
        </style>
</head>
<body>
     <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>
                 <div style="background-color:white; height:600px;">
        <div>
           <center>
               <h1 style="font-family: 'Courier New'; font-weight:bold; font-size: 32pt;background-color:mediumorchid">Password Recovery Wizard </h1>
           </center>
           <center>
            <div style="padding-top:30px">
              <asp:Image ID="Image1" runat="server" src="Images/Lock2.png"  Height="129px" Width="175px"/>
           </div>
               </center>
        </div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <center>
             <div class="border border-secondary" style="height:190px;width:40%;margin-top:40px">
              <div>
                 <center><h1 style="font-family: 'Baskerville Old Face'; font-weight:bold; font-size:13pt; color:white; height: 29px;background-color:mediumorchid">Enter Your Details</h1></center>
              </div>
                <table>
                    <tr>
                        <td class="auto-style1">
                           <asp:Label ID="Label1" runat="server" Text="Username:" style="text-align: right ;color:black" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                         </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtUsername" runat="server" MaxLength="50"  CssClass="form-control" placeholder="Enter your e-mail"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Enter Email  In a Proper Format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:Label ID="lblInvalid" runat="server" ForeColor="Red"></asp:Label>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:right">
                            <asp:Button ID="btntoSecQue" runat="server" Text="Save &amp; Next" CssClass="btn btn-success" OnClick="btntoSecQue_Click" />
                        </td>
                    </tr>
                </table>
                </div>
                     </center>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <center>                 
                    <div class="border border-secondary" style="height:auto;width:40%;margin-top:40px">
                       <div>
                         <center>
                           <h1 style="font-family: 'Baskerville Old Face'; font-weight:bold; font-size:13pt; color:white; height: 29px; background-color:mediumorchid">Enter Your Details</h1>
                         </center>
                      </div>
                       <table style="height:158px">
                        <tr>
                        <td class="auto-style3" > 
                             <asp:Label ID="lblSQue" runat="server" Font-Bold="True" Text="Security Question:"></asp:Label>
                              &nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblShowSecQue" runat="server" Font-Bold="True" ForeColor="black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="lblSAns" runat="server" Font-Bold="True" Text="Security Answer:"></asp:Label>
                             &nbsp;</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtSecAns" runat="server" placeholder="Enter Security Answer" CssClass="form-control"></asp:TextBox>
                            <cc1:FilteredTextBoxExtender ID="txtSecAns_FilteredTextBoxExtender" runat="server" BehaviorID="txtSecAns_FilteredTextBoxExtender" TargetControlID="txtSecAns" ValidChars="abcdefghijklmnopqrstuvwxyz " />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp
                        </td>
                        <td style="text-align:right">
                            <asp:Button ID="btnShowPass" runat="server" CssClass="btn btn-success" Text="Next" OnClick="btnShowPass_Click"/>
                        </td>
                    </tr>
                </table>
                     </div>
                    </center>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <center>             
                    <div class="border border-secondary" style="height:158px; width:40%;margin-top:40px">
                    <center>
                       <h1 style="font-family: 'Baskerville Old Face'; font-weight:bold; font-size:13pt; color:white; height: 29px; background-color:mediumorchid" >Your Password Is</h1>
                    </center>
                     <center>
                        <i class="bi-key-fill"></i> <asp:Label ID="lblShowPass" runat="server" BackColor="black" Font-Bold="True" Font-Size="30px" ForeColor="#00CC00"></asp:Label>
                    </center>
                  
                    </div>
               </center>
             </asp:View>
        </asp:MultiView>
        <asp:HiddenField ID="hdfUserID" runat="server" />
             
     </div>
             </ContentTemplate>
         </asp:UpdatePanel>
         
    </form>
</body>
</html>
