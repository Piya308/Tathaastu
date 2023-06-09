<%@ Page Title="" Language="C#" MasterPageFile="~/NGO/NGOMasterPage.master" AutoEventWireup="true" CodeFile="NGONeeds.aspx.cs" Inherits="NGO_NGONeeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="../css/font-awesome.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link rel="../stylesheet" href="../https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />
    <script src="../https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="../https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css"/>
    
    <style type="text/css">
      .right
      {
          text-align:right;

      }  
        .left{
            text-align:left;
        }
        .auto-style1 {
            width: 564px;
            height: 192px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" width="100%">
        <ContentTemplate>
           <center>
                <center>
                    <label style="font-weight: bold; font-size: 30px" >Upload Your Needs</label>
                </center>
               <center>
                <table class="auto-style1 table">
                    <tr>
                        <td class="right" >
                            <label>Enter Product Name:</label>
                        </td>
                        <td class="left">
                            <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="right">&nbsp</td>
                        <td class="left">
                            <asp:CheckBox ID="ChkboxActive" runat="server" Text="Active"></asp:CheckBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="right">&nbsp</td>
                        <td class="left">
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-info" OnClick="btnSave_Click"></asp:Button>&nbsp;&nbsp;
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-success"></asp:Button>
                        </td>
                    </tr>
                </table>
                </center>
        
                <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="NGOID" />
                        <asp:BoundField HeaderText="Product Name" DataField="ProductDetails" />
                        <asp:BoundField HeaderText="Active" DataField="Active" />
                        <asp:ButtonField CommandName="Ed" Text="Edit" />
                        <asp:ButtonField CommandName="Del" Text="Delete" />
                    </Columns>
                </asp:GridView>
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

