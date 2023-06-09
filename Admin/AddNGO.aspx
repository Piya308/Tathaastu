<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNGO.aspx.cs" Inherits="Admin_NGOList" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf-8"/>
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
             <center>
                         <label style="font-size: 30px; font-weight: bold; font-family: 'Arial Black'">Add NGOs</label>
                     </center>
        <table class="table-custom">
                    <tr>
                        <td class="auto-style9"style="text-align: right">
                            <label style="color: #000000">NGO Name:</label>
                        </td>
                        <td class="auto-style8" style="text-align: left">
                            <asp:TextBox ID="txtNGOName" runat="server" MaxLength="100" CssClass="form-control" Height="29px"></asp:TextBox>
                           
                            <cc1:TextBoxWatermarkExtender ID="txtNGOName_TextBoxWatermarkExtender" runat="server" BehaviorID="txtNGOName_TextBoxWatermarkExtender" TargetControlID="txtNGOName" WatermarkText="Enter NGOs Name" />
                           
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNGOName" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style6" style="text-align: right">
                             <label style="color: #000000">Registration No:</label>
                         </td>
                        <td class="auto-style11" style="text-align: left">
                            <asp:TextBox ID="txtRegNo" runat="server" MaxLength="50" CssClass="form-control" Height="29px"></asp:TextBox>
                           
                            <cc1:TextBoxWatermarkExtender ID="txtRegNo_TextBoxWatermarkExtender" runat="server" BehaviorID="txtRegNo_TextBoxWatermarkExtender" TargetControlID="txtRegNo" WatermarkText="Enter NGOs Registration No." />
                           
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRegNo" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="text-align: right">
                            <label style="color: #000000">NGO Email:</label>
                        </td>
                        <td class="auto-style8" style="text-align: left">
                            <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" CssClass="form-control" Height="29px"></asp:TextBox>
                            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                            <cc1:TextBoxWatermarkExtender ID="txtEmail_TextBoxWatermarkExtender" runat="server" BehaviorID="txtEmail_TextBoxWatermarkExtender" TargetControlID="txtEmail" WatermarkText="Enter NGOs E-mail" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Email  In a Proper Format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style6" style="text-align: right">
                            <label style="color: #000000">Sector:</label></td>
                        <td class="auto-style11" style="text-align: left">
                            <asp:DropDownList ID="ddlSector" runat="server" Height="40px" CssClass="form-control" DataSourceID="SqlDataSource4" DataTextField="SectorName" DataValueField="SectorID">
                               </asp:DropDownList>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT * FROM [Sector] ORDER BY [SectorID]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="text-align: right">
                            <label style="color: #000000">NGO Mobile:</label>
                        </td>
                        <td class="auto-style8" style="text-align: left">
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Height="29px" MaxLength="10"></asp:TextBox>
                            
                            <cc1:TextBoxWatermarkExtender ID="txtMobile_TextBoxWatermarkExtender" runat="server" BehaviorID="txtMobile_TextBoxWatermarkExtender" TargetControlID="txtMobile" WatermarkText="Enter Contact No." />
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style6" style="text-align: right">
                            <label style="color: #000000">NGO Type:</label></td>
                        <td class="auto-style11" style="text-align: left">
                            <asp:DropDownList ID="ddlNGOType" runat="server" Height="40px" CssClass="form-control" DataSourceID="SqlDataSource5" DataTextField="NGOType" DataValueField="NGOTYPEID">
                            </asp:DropDownList>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT * FROM [NGOType] ORDER BY [NGOTYPEID]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="text-align: right">
                            <label style="color: #000000">Password:</label>
                        </td>
                        <td class="auto-style8" style="text-align: left">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" Height="29px"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="txtPassword_TextBoxWatermarkExtender" runat="server" BehaviorID="txtPassword_TextBoxWatermarkExtender" TargetControlID="txtPassword" WatermarkText="Enter Login Password" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style6" style="text-align: right">
                            <label style="color: #000000">State:</label></td>
                        <td class="auto-style11" style="text-align: left">
                            <asp:DropDownList ID="ddlStates" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="StateName" DataValueField="StateID">
                                <asp:ListItem Value="-1">-Select state-</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT * FROM [States] ORDER BY [StateID]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="text-align: right">
                            <label style="color: #000000">Security Question:</label>
                        </td>
                        <td class="auto-style8" style="text-align: left">
                            <asp:DropDownList ID="ddlSecQue" runat="server" Height="40px" CssClass="form-control">
                                <asp:ListItem>_Select Security Question_</asp:ListItem>
                            <asp:ListItem>What is your favourite book?</asp:ListItem>
                            <asp:ListItem>Who is your favourite teacher?</asp:ListItem>
                            <asp:ListItem>What is your favourite pet?</asp:ListItem>
                            <asp:ListItem>What is your favourite food?</asp:ListItem>
                            <asp:ListItem>Which is your favourite place to vacation?</asp:ListItem>
                            <asp:ListItem>which is your favouite movie?</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                        <td class="auto-style6" style="text-align: right">
                            <label style="color: #000000">District:</label></td >
                        <td class="auto-style11" style="text-align: left">
                            <asp:DropDownList ID="ddlDistricts" runat="server" AutoPostback="True" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="DistrictName" DataValueField="DistrictID">
                             </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT * FROM [Districts] WHERE ([StateID] = @StateID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlStates" Name="StateID" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                             
                        </td>
                        <td class="auto-style13">
                             &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="text-align: right">
                            <label style="color: #000000">Security Answer:</label>
                        </td>
                        <td class="auto-style8" style="text-align: left">
                            <asp:TextBox ID="txtSecAns" runat="server" MaxLength="50" CssClass="form-control" Height="29px" ></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="txtSecAns_TextBoxWatermarkExtender" runat="server" BehaviorID="txtSecAns_TextBoxWatermarkExtender" TargetControlID="txtSecAns" WatermarkText="Enter Security Answer" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSecAns" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style6" style="text-align: right">
                        <label style="color: #000000">NGO Address:</label> 
                        </td>
                        <td class="auto-style11" style="text-align: left">
                            <asp:TextBox ID="txtAddress" runat="server" MaxLength="100" CssClass="form-control" Height="138px" TextMode="MultiLine"></asp:TextBox>
                                             
                            <cc1:TextBoxWatermarkExtender ID="txtAddress_TextBoxWatermarkExtender" runat="server" BehaviorID="txtAddress_TextBoxWatermarkExtender" TargetControlID="txtAddress" WatermarkText="Enter Address" />
                                             
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5" class="textalign">                          
                            <center>
                                <div >
                                <div class="btn-group text-center" role="group" aria-label="..." style="text-align:center">
                                <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" Width="100px" height="36px" OnClick="btnAdd_Click" />&nbsp;&nbsp
                                 <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger" Width="100px" height="36px"/>
                             </div>
                            </div>
                            </center>
                        </td>
                    </tr>
                   
                    
                </table>

    </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>

