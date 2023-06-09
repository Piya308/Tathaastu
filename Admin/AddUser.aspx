<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="Admin_UserList" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css"/>
    <link rel="preconnect" href="../https://fonts.gstatic.com"/>
     <style type="text/css">
          .auto-style3 {
            height: 46px;
            width: 418px;
        }
        .auto-style4 {
            text-align: right;
            width: 273px;
        }
         .auto-style6 {
            width: 418px;
        }
         table{
             height:500px;
            
         }
         tr
         {
             border:none;
         }
         .auto-style7 {
             width: 523px;
         }
         .auto-style10 {
             width: 551px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <center>
                         <label style="font-size: 30px; font-weight: bold; font-family: 'Arial Black'">Add Users</label>
                     </center>
            <center>
                 <table class="auto-style10">
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
                    <td class="auto-style4">
                         <label style="color: #000000">Security Question:</label>
                    </td>
                    <td style="text-align: left" class="auto-style3 ">
                        <asp:DropDownList ID="ddlSecQue" runat="server" Width="260px" Height="32px" CssClass="form-control">
                            <asp:ListItem>_Select Security Question_</asp:ListItem>
                            <asp:ListItem>Which is your favourite book?</asp:ListItem>
                            <asp:ListItem>Who is your favourite teacher?</asp:ListItem>
                            <asp:ListItem>What is your favourite pet?</asp:ListItem>
                            <asp:ListItem>What is your favourite food?</asp:ListItem>
                            <asp:ListItem>Which is your favourite place to vacation?</asp:ListItem>
                            <asp:ListItem>which is your favouite movie?</asp:ListItem>
                        </asp:DropDownList>
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
                          <span class="box">  <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" Width="100px" height="36px" OnClick="btnAdd_Click"/></span>&nbsp;&nbsp;
                           <span class="box"> <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger" Width="100px" height="36px"/></span>
                        </div>                 
                    </td>
                </tr>
                
            </table>
    </center>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

