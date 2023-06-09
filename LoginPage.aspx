<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css"/>
    <link rel="preconnect" href="../https://fonts.gstatic.com"/>
   <link href="../https://fonts.googleapis.com/css2?family=Orelega+One&display=swap" rel="stylesheet"/>
    <style type="text/css">
     
         i{
            width:55px;
            text-align:center;
            padding:0px 32px;
            color:white;
        }
        body{
            background: url(http://localhost:60283/Images/Bgimg.jpg) no-repeat fixed ;
            background-size:cover;
               }
        .auto-style1 {
            width: 30%;
            color: #212529;
            border-collapse: collapse;
            height: 304px;
            margin-bottom: 1rem;
        }
      .td{
          padding-bottom:2px;padding-top:12px;border-bottom:1px solid white;
      }
      .btn1
      {
           Width:268px;height:40px;border-radius:10px;margin:8px 0;border:2px solid black;
          text-decoration:none;
          color:white;
          background-color:mediumorchid;
      }
      .btn1:hover{
          
          background-color:lightgoldenrodyellow;
          color:black;
      }
       .btn2{
           
          color:white;
          
      }
      .btn2:hover{
          
          font-weight:bold;
          color:blue;
      }
      .logintxt{
                    margin:auto;color:white;font-weight:bold;font-family: 'Orelega One', cursive;
                     margin-bottom:5px;
                     padding:13px 0;border-bottom:3px solid white; font-size: 35px;
      }
     
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
               
                     <center>
                 <asp:Image ID="Image1" runat="server" src="Images/logo.png" Height="128px" Width="168px"/>
                </center>
                <center>
                     <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td>
                   <center>
                    <asp:Label runat="server" Text="Login"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td class="td">
                   <center>
                        <i class="bi-alarm bi-envelope-fill">

                        <asp:TextBox ID="txtUsername" runat="server" Font-Bold="True" Font-Names="san serif" Font-Size="Large" margin-left="30px" placeholder="Entery Your E-mail"></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="txtUsername_TextBoxWatermarkExtender" runat="server" BehaviorID="txtUsername_TextBoxWatermarkExtender" TargetControlID="txtUsername" WatermarkText="Enter  Your  E-mail" />
                        </i>
                         <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required*" ControlToValidate="txtUsername" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                         <asp:Label ID="lblInvalid" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
                   </center>
                </td>
            </tr>
            <tr>
                <td class="td">
                   <center>
                        <i class="bi-alarm bi-key-fill">
                        <asp:TextBox ID="txtPassword" runat="server" Font-Bold="True" Font-Names="san serif" Font-Size="Large"  placeholder="Enter Login Password" TextMode="Password"></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="txtPassword_TextBoxWatermarkExtender" runat="server" BehaviorID="txtPassword_TextBoxWatermarkExtender" TargetControlID="txtPassword" WatermarkText="Enter  Login  Pasword" />
                        </i>
                         <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required*" ControlToValidate="txtUsername" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                         <asp:Label ID="lblIncorrectPass" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
                   </center>
                </td>
            </tr>
            <tr>
                <td>
                   <center>
                         <label style="color:white ;margin-top:.5rem">Login As:</label>
                         <br />
                         <asp:DropDownList ID="ddlLoginAs" runat="server" CssClass="form-control" Width="185px">
                             <asp:ListItem>Login as User</asp:ListItem>
                             <asp:ListItem>Login as NGO</asp:ListItem>
                         </asp:DropDownList>                       
                         </center>
                </td>
            </tr>
            <tr>
                <td style="padding-top:13px">
                    <center>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn1" OnClick="btnLogin_Click1" />
                    </center>
                </td>
            </tr>
            <tr>
                <td>
                   <center>
                        <asp:HyperLink ID="hypFrgPass" runat="server" CssClass="btn btn-link btn2"  NavigateUrl="~/PasswordRecovery.aspx" >Forgot Password?</asp:HyperLink>
                   </center>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                        <div class="dropdown">
                          <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Signup
                          </a>
                         <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                         <a class="dropdown-item box" href="UserReg.aspx">Signup as a Donor</a>
                         <a class="dropdown-item box" href="NGOReg.aspx">Signup as NGO</a>
                        </div>
                     </div>
                    </center>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                        <asp:HyperLink ID="hypHome" runat="server" CssClass="btn btn-link btn2"  NavigateUrl="HomeMasterDefault.aspx" >HOME</asp:HyperLink>
                    </center>
                </td>
            </tr>
        </table>
        
                </center>
                 
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
