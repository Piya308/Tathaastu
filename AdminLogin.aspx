<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>
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
          padding-bottom:2px;padding-top:42px;border-bottom:1px solid white;
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
     
        .auto-style2 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
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
                        <label class="logintxt">Admin Login</label>
                   </center>
                </td>
            </tr>
            <tr>
                <td class="td">
                   <center>
                        <i class="bi-alarm bi-envelope-fill"></i>
                         <asp:TextBox ID="txtUsername" runat="server" placeholder="Entery Your E-mail" Font-Size="Large" style="background:none;border:none" Font-Bold="True" ForeColor="White" margin-left="30px" Font-Names="san serif"></asp:TextBox>
                         <cc1:TextBoxWatermarkExtender ID="txtUsername_TextBoxWatermarkExtender" runat="server" BehaviorID="txtUsername_TextBoxWatermarkExtender" TargetControlID="txtUsername" WatermarkText="Enter  Your  E-mail" />
                         <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required*" ControlToValidate="txtUsername" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                         <asp:Label ID="lblInvalid" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
                   </center>
                </td>
            </tr>
            <tr>
                <td class="td">
                   <center>
                        <i class="bi-alarm bi-key-fill"></i>
                         <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Login Password" Font-Size="Large" style="background:none;border:none" Font-Bold="True" ForeColor="White" Font-Names="san serif" TextMode="Password"></asp:TextBox>
                         <cc1:TextBoxWatermarkExtender ID="txtPassword_TextBoxWatermarkExtender" runat="server" BehaviorID="txtPassword_TextBoxWatermarkExtender" TargetControlID="txtPassword" WatermarkText="Enter  Login  Pasword" />
                         <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required*" ControlToValidate="txtUsername" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                         <asp:Label ID="lblIncorrectPass" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
                   </center>
                </td>
            </tr>
            
            <tr>
                <td style="padding-top:13px">
                    <center>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn1" OnClick="btnLogin_Click"/>
                    </center>
                </td>
            </tr>

             <tr>
                <td style="padding-top:13px">
                    <center>
                        <asp:HyperLink ID="hypFrgPass" runat="server" CssClass="btn btn-link btn2"  NavigateUrl="~/PasswordRecovery.aspx" >Forgot Password?</asp:HyperLink>
                    </center>
                </td>
            </tr>
            
            <tr>
                <td>
                    <center>
                        <asp:HyperLink ID="hypHome" runat="server" CssClass="btn btn-link btn2"  NavigateUrl="~/User/UserDefault.aspx" >HOME</asp:HyperLink>
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
