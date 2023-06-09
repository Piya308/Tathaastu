<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="HomeMasterDefault.aspx.cs" Inherits="HomeMasterDefault" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style14 {
            text-align: right;
        }
        .auto-style15{
            text-align: left;
        }
     
        .auto-style17 {
            height: 199px;
        width: 353px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Panel ID="Panel1" runat="server" Width="416px" BackColor="White" Border="1px solid black" BorderWidth="1px" >
        <center>
            <table class="auto-style17">
                <tr>
                    <td>
                       <label>Already Have An Account?</label>
                    </td>
                    <td class="auto-style15" >
                        <asp:Button ID="btnLogin" runat="server" href="LoginPage.aspx" Text="Login" CssClass="btn btn-success" OnClick="btnLogin_Click"></asp:Button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            New User?
                        </label>
                    </td>
                    <td>
                        <div class="dropdown">
                          <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="btn btn-primary" OnClick="btnSignup_Click"></asp:Button>
                     </div>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp</td>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-light"></asp:Button>
                    </td>
                </tr>
            </table>
        </center>
    </asp:Panel>
    <br />
    <center>
       <asp:ImageButton runat="server" class="box" ImageUrl="../Images/donatebutton.png" Height="73px" Width="255px" ID="ImageButton1"></asp:ImageButton>
        <cc1:ModalPopupExtender ID="ImageButton1_ModalPopupExtender" runat="server" BehaviorID="ImageButton1_ModalPopupExtender" DynamicServicePath="" PopupControlID="Panel1" TargetControlID="ImageButton1">
        </cc1:ModalPopupExtender>
   </center> 
</asp:Content>

    
