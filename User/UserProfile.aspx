<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="User_UserProfile" %>

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
    
    <style type="text/css">
        .table-custom
      
        }
        .width{
            width:200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <center>
                    <center>
                           <img src="../Images/logo.png" style=" Height:100px; Width:137px"/>
                    </center>
                <div class="border border-dark" style="height:45%;width:60%; margin-top:2%;">
                    <center>
                        <h2 style="font-size: 40px; font-weight: bold;background-color:mediumorchid">
                            Update User Profile
                        </h2>
                    </center>
                <center>
                <table class="table" style="width:60%;height:auto;">
                    <tr>
                        <td class="text-right">
                            <label>
                            Enter Resedential Address:
                            </label>
                        </td>
                        <center>
                            <td>
                                <asp:TextBox ID="txtResAdd" runat="server" CssClass="form-control width" TextMode="MultiLine"></asp:TextBox>
                                <cc1:TextBoxWatermarkExtender ID="txtResAdd_TextBoxWatermarkExtender" runat="server" BehaviorID="txtResAdd_TextBoxWatermarkExtender" TargetControlID="txtResAdd" WatermarkText="Enter Resedential Address" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtResAdd" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </center>
                    </tr>
                    <tr>
                        <td class="text-right">
                            <label>
                            Select State:
                            </label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control width" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT * FROM [States] ORDER BY [StateName]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-right">
                            <label>
                            Select District:
                            </label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control width" DataSourceID="SqlDataSource2" DataTextField="DistrictName" DataValueField="DistrictID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT [DistrictID], [DistrictName] FROM [Districts] WHERE ([StateID] = @StateID) ORDER BY [DistrictName]">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlState" Name="StateID" PropertyName="SelectedValue" Type="Decimal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-right">
                            <label>
                            Enter Mobile:
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control width"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="txtMobile_TextBoxWatermarkExtender" runat="server" BehaviorID="txtMobile_TextBoxWatermarkExtender" TargetControlID="txtMobile" WatermarkText="Enter Contact No." />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-right" >
                            <label>
                            Enter E-mail:
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control width"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="txtEmail_TextBoxWatermarkExtender" runat="server" BehaviorID="txtEmail_TextBoxWatermarkExtender" TargetControlID="txtEmail" WatermarkText="Enter Email" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp; </td>
                        <td>
                            <asp:Button ID="btnUpdateProfile" runat="server" CssClass="btn btn-success" OnClick="btnUpdateProfile_Click" Text="Update Profile" />
                        </td>
                    </tr>
                </table>
                    </center>
                </div>
                </center>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="table" style="height:151px">
                    <tr>
                        <td class="auto-style1" >
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <center>
                                <div class="p-3 mb-2 bg-success text-white">
                                  <label style="color:black">Profile Updated Sucessfully&nbsp;</label><asp:HyperLink ID="hyplogin" runat="server" ForeColor="Yellow" NavigateUrl="~/User/Donation.aspx">Click Here To Donate</asp:HyperLink>
                                </div>
                             </center> 
                        </td>
                    </tr>
                </table>
                    </asp:View>
                </asp:MultiView>
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </div>
    </form>
</body>
</html>
