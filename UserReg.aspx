<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserReg.aspx.cs" Inherits="UserReg" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.5.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css"/>
    <style type="text/css">
  

        .tbl {
            width: 100%;
            height: 420px;
        }
        .tblUserCreated{
            width:100%;
        }
        
      .padding{
          padding-left:30px;
            text-align: left;
        }
        .auto-style1 {
            height: 243px;
        }
        .auto-style2 {
            text-align: right;
            height: 46px;
            width: 273px;
        }
        .auto-style3 {
            height: 46px;
            width: 418px;
        }
        .auto-style4 {
            text-align: right;
            width: 273px;
        }
        .auto-style5 {
            width: 273px;
        }
        .auto-style6 {
            width: 418px;
        }
        .auto-style7 {
            padding-left: 30px;
            text-align: left;
            width: 418px;
        }
         .box{
           
            transition: transform 0.8s;
        }
        .box:hover{
            transform:scale(1.2);
            }
        .auto-style9 {
            height: 140px;
            width: 543px;
        }
        .auto-style10 {
            width: 755px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <center>
           <asp:Image ID="Image1" runat="server" src="../Images/logo.png" Height="100px" Width="137px"/>
       </center>
        
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
              <center>
                <div class="border border-dark" style=" height:auto; width:60%">
                    <center>
                <h3 style="font-family: 'Arial Black'; font-weight: bold; font-size: 22pt; color: black;background-color:mediumorchid">
                    User Signup
                </h3>
              </center>
             <center>
                 <table class="tbl" style="padding: 1px;">
                <tr>
                    <td class="auto-style4">
                        <label style="color: #000000">Full Name:</label> 
                    </td>
                    <td style="text-align: left" class="auto-style6">
                        <asp:TextBox ID="txtFullName" runat="server" MaxLength="100" Width="260px" CssClass="form-control" Height="29px"></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="txtFullName_TextBoxWatermarkExtender" runat="server" BehaviorID="txtFullName_TextBoxWatermarkExtender" TargetControlID="txtFullName" WatermarkText="Firstname Middlename Lastname" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <label style="color: #000000">Email:</label>
                    </td>
                    <td style="text-align: left" class="auto-style6">
                        <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" Width="260px" CssClass="form-control" Height="29px"></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="txtEmail_TextBoxWatermarkExtender" runat="server" BehaviorID="txtEmail_TextBoxWatermarkExtender" TargetControlID="txtEmail" WatermarkText="abc@gmail.com" />
                        <cc1:FilteredTextBoxExtender ID="txtEmail_FilteredTextBoxExtender" runat="server" BehaviorID="txtEmail_FilteredTextBoxExtender" TargetControlID="txtEmail" ValidChars="1234567890abcdefghijklmnopqrstuvwxyz@.  " />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Email  In a Proper Format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblAlreadyExist" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <label style="color: #000000">Mobile:</label>
                    </td>
                    <td style="text-align: left" class="auto-style6">
                        <asp:TextBox ID="txtMobile" runat="server" Width="260px" CssClass="form-control" Height="29px" MaxLength="10"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="txtMobile_FilteredTextBoxExtender" runat="server" BehaviorID="txtMobile_FilteredTextBoxExtender" TargetControlID="txtMobile" ValidChars="1234567890" />
                        <cc1:TextBoxWatermarkExtender ID="txtMobile_TextBoxWatermarkExtender" runat="server" BehaviorID="txtMobile_TextBoxWatermarkExtender" TargetControlID="txtMobile" WatermarkText="Contact No." />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Enter only Integer Values" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <label style="color: #000000">Password:</label>
                    </td>
                    <td style="text-align: left" class="auto-style6">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="260px" CssClass="form-control" Height="29px"  MaxLength="12"></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="txtPassword_TextBoxWatermarkExtender" runat="server" BehaviorID="txtPassword_TextBoxWatermarkExtender" TargetControlID="txtPassword" WatermarkText="Enter Login Password" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                         <label style="color: #000000">Security Question:</label>
                    </td>
                    <td style="text-align: left" class="auto-style3">
                        <asp:DropDownList ID="ddlSecQue" runat="server" Width="260px" Height="29px">
                            <asp:ListItem>_Select Security Question_</asp:ListItem>
                            <asp:ListItem>Which is your favourite book?</asp:ListItem>
                            <asp:ListItem>Who is your favourite teacher?</asp:ListItem>
                            <asp:ListItem>What is your favourite pet?</asp:ListItem>
                            <asp:ListItem>What is your favourite food?</asp:ListItem>
                            <asp:ListItem>Which is your favourite place to vacation?</asp:ListItem>
                            <asp:ListItem>which is your favouite movie?</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlSecQue" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True" Visible="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                         <label style="color: #000000">Security Answer:</label>
                     </td>
                    <td style="text-align: left" class="auto-style6">
                         <asp:TextBox ID="txtSecAns" runat="server" MaxLength="50" Width="260px" CssClass="form-control" Height="29px"></asp:TextBox>
                         <cc1:TextBoxWatermarkExtender ID="txtSecAns_TextBoxWatermarkExtender" runat="server" BehaviorID="txtSecAns_TextBoxWatermarkExtender" TargetControlID="txtSecAns" WatermarkText="Enter Security Answer" />
                         <cc1:FilteredTextBoxExtender ID="txtSecAns_FilteredTextBoxExtender" runat="server" BehaviorID="txtSecAns_FilteredTextBoxExtender" TargetControlID="txtSecAns" ValidChars="abcdefghijklmnopqrstuvwxyz " />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSecAns" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                   </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">
                       <div class="btn-group" role="group" aria-label="...">
                          <span class="box">  <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="btn btn-primary" Width="100px" height="36px" OnClick="btnSignup_Click" /></span>
                           <span class="box"> <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-info" Width="100px" height="36px" OnClick="btnReset_Click" /></span>
                        </div>                 
                    </td>
                </tr>
                <tr>
                   <td class="auto-style5">&nbsp;</td>
                    <td style="color:black; text-align: left;" class="auto-style6 box">Already have an account?
                        <asp:HyperLink ID="hyperLogin" runat="server" ForeColor="Blue" NavigateUrl="~/LoginPage.aspx">Login</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="text-align: left" class="auto-style6 box">
                        <asp:HyperLink ID="hypAboutUs" class="box" runat="server" ForeColor="Blue" NavigateUrl="~/About.aspx">About Us</asp:HyperLink>
                    </td>
                </tr>
            </table>
             </center>
            </div>
         </center>

         </asp:View>
           
            <asp:View ID="View2" runat="server">
                <table class="table">
                    <tr>
                        <td class="auto-style1" >
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <center>
                                <div class="p-3 mb-2 bg-success text-white">
                                  <label style="color:black">User Created Sucessfully&nbsp;</label><asp:HyperLink ID="hyplogin" runat="server" ForeColor="Yellow" NavigateUrl="~/LoginPage.aspx">Click Here To Login</asp:HyperLink>
                                </div>
                             </center> 
                        </td>
                    </tr>
                </table>
              
            </asp:View>
       </asp:MultiView>
        <script src="Scripts/jquery-3.0.0.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
