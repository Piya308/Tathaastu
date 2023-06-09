<%@ Page Title="" Language="C#" MasterPageFile="~/NGO/NGOMasterPage.master" AutoEventWireup="true" CodeFile="NGODefault.aspx.cs" Inherits="NGO_NGODefault" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <style type="text/css">
     .table-custom
         {
             height:450px;
         }
           .box{
           
            transition: transform 0.8s;
                }
        .box:hover{
            transform:scale(1.2);
            }
         .auto-style10 {
            width: 383px;
        }
        .auto-style11 {
            width: 502px;
        }
         .auto-style12 {
            height: 412px;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <center>
                   <div class="border border-dark" style="width:90%; height:auto">
                    <center style="border-bottom:2px solid black">                   
                     <h3 style="font-family: 'Arial Black'; font-weight: bold; font-size: 22pt;">Update Pannel</h3>
                    </center>
                       <center>
                        <table class="auto-style12">
                      <tr>
                          <td class="auto-style10"style="text-align: right">
                            <label style="color: #000000">NGO Name:</label>
                        </td>
                        <td class="auto-style11" style="text-align: left">
                            <asp:Label ID="lblDisplayNGOName" runat="server"></asp:Label>
                        </td>
                          </tr>
                       <tr>
                          <td style="text-align:right" class="auto-style10">
                          <label style="color: #000000">NGO E-mail:</label>
                          </td>
                          <td style="text-align:left" class="auto-style11">
                              <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                              <cc1:TextBoxWatermarkExtender ID="txtEmail_TextBoxWatermarkExtender" runat="server" BehaviorID="txtEmail_TextBoxWatermarkExtender" TargetControlID="txtEmail" WatermarkText="Update E-mail" />
                          </td>
                      </tr>
                       <tr>
                          <td style="text-align:right" class="auto-style10">
                          <label style="color: #000000">NGO Mobile:</label>
                          </td>
                          <td style="text-align:left" class="auto-style11">
                              <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                              <cc1:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox1_TextBoxWatermarkExtender" TargetControlID="TextBox1" WatermarkText="Update Mobile No." />
                          </td>
                      </tr>
                        <tr>
                          <td style="text-align:right" class="auto-style10">
                          <label style="color: #000000">NGO Address:</label>
                          </td>
                          <td style="text-align:left" class="auto-style11">
                              <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                              <cc1:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox2_TextBoxWatermarkExtender" TargetControlID="TextBox2" WatermarkText="Update Address" />
                          </td>
                      </tr>
                        <tr>
                          <td style="text-align:right" class="auto-style10">
                          &nbsp
                          </td>
                          <td style="text-align:left" class="auto-style11">
                              <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-success" OnClick="btnUpdate_Click"></asp:Button>&nbsp;&nbsp
                              <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger"></asp:Button>
                          </td>
                      </tr>
                   </table>
                           </center>
             </div>
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


