<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NGOReg.aspx.cs" Inherits="NGOReg" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.5.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    
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
         .auto-style1 {
             width: 516px;
         }
         .auto-style6 {
             width: 256px;
         }
         .auto-style8 {
             width: 435px;
         }
         .auto-style9 {
             width: 463px;
         }
         .auto-style11 {
             width: 369px;
         }
         .auto-style13 {
             width: 316px;
         }
       
         .auto-style16 {
             width: 100%;
             color: #212529;
             border-collapse: collapse;
             height: 151px;
             margin-bottom: 1rem;
         }
       
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
                <center>
           <asp:Image ID="Image1" runat="server" src="../Images/logo.png" Height="100px" Width="137px"/>
                </center>
                 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
        <center>
                   <div class="border border-dark" style="width:90%; height:515px">
                    <center>                   
                     <h3 style="font-family: 'Arial Black'; font-weight: bold; font-size: 22pt; color: black; background-color: mediumorchid;">NGO Signup</h3>
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
                            <asp:DropDownList ID="ddlSector" runat="server" Height="40px" CssClass="form-control">
                                <asp:ListItem>_Select Sector_</asp:ListItem>
                                <asp:ListItem>Agriculture</asp:ListItem>
                                <asp:ListItem>Animal Husbandary,Dairying &amp; Fisheries</asp:ListItem>
                                <asp:ListItem>Art &amp; Culture</asp:ListItem>
                                <asp:ListItem>Biotechnology</asp:ListItem>
                                <asp:ListItem>Children</asp:ListItem>
                                <asp:ListItem>Civic Issues</asp:ListItem>
                                <asp:ListItem>Dalit Upliftment</asp:ListItem>
                                <asp:ListItem>Differently Abled</asp:ListItem>
                                <asp:ListItem>Disaster Management</asp:ListItem>
                                <asp:ListItem>Drinking Water</asp:ListItem>
                                <asp:ListItem>Education &amp; Literacy</asp:ListItem>
                                <asp:ListItem>Aged/Eldery</asp:ListItem>
                                <asp:ListItem>Environment &amp; Forests</asp:ListItem>
                                <asp:ListItem>Food Processing</asp:ListItem>
                                <asp:ListItem>Health &amp; Family Welfare</asp:ListItem>
                                <asp:ListItem>HIV/AIDS</asp:ListItem>
                                <asp:ListItem>Housing</asp:ListItem>
                                <asp:ListItem>Human Rights</asp:ListItem>
                                <asp:ListItem>Information &amp; Communication Technology</asp:ListItem>
                                <asp:ListItem>Labour &amp; Employment</asp:ListItem>
                                <asp:ListItem>Land Resources</asp:ListItem>
                                <asp:ListItem>Legal Awareness &amp; Aid</asp:ListItem>
                                <asp:ListItem>Micro Finance(SHGs)</asp:ListItem>
                                <asp:ListItem>Micro Small &amp; Medium Enterprise</asp:ListItem>
                                <asp:ListItem>Minority Issues</asp:ListItem>
                                <asp:ListItem>New &amp; Renewable Energy</asp:ListItem>
                                <asp:ListItem>Nutrition</asp:ListItem>
                                <asp:ListItem>Panchayati Raj</asp:ListItem>
                                <asp:ListItem>Prisioner&#39;s Issues</asp:ListItem>
                                <asp:ListItem>Right to Informatio &amp; Advocacy</asp:ListItem>
                                <asp:ListItem>Rural Development &amp; Poverty Alleviation</asp:ListItem>
                                <asp:ListItem>Science &amp; Technology</asp:ListItem>
                                <asp:ListItem>Scientific &amp; Industrial Research</asp:ListItem>
                                <asp:ListItem>Sports</asp:ListItem>
                                <asp:ListItem>Tourism</asp:ListItem>
                                <asp:ListItem>Tribal Affairs</asp:ListItem>
                                <asp:ListItem>Urban Development &amp; Poverty Alleviation</asp:ListItem>
                                <asp:ListItem>Vocational Training</asp:ListItem>
                                <asp:ListItem>Water Resources</asp:ListItem>
                                <asp:ListItem>Womens Development &amp; Empowerment</asp:ListItem>
                                <asp:ListItem>Youth Affairs</asp:ListItem>
                                <asp:ListItem>Any Other</asp:ListItem>
                            </asp:DropDownList>
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
                            <asp:DropDownList ID="ddlNGOType" runat="server" Height="40px" CssClass="form-control">
                                <asp:ListItem>_Select NGO Type_</asp:ListItem>
                                <asp:ListItem>Private Sector Companies(Sec 8/25)</asp:ListItem>
                                <asp:ListItem>Registered Societies(Non-Government)</asp:ListItem>
                                <asp:ListItem>Trust(Non Government)</asp:ListItem>
                                <asp:ListItem>Otther Registered Entities(Non-Government)</asp:ListItem>
                                <asp:ListItem>Academic Institutions(Private)</asp:ListItem>
                            </asp:DropDownList>
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
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                        <td class="auto-style6" style="text-align: right">
                            <label style="color: #000000">State:</label></td>
                        <td class="auto-style11" style="text-align: left">
                            <asp:DropDownList ID="ddlStates" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateID" CssClass="form-control">
                                <asp:ListItem Value="-1">-Select State-</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT [StateID], [StateName] FROM [States] ORDER BY [StateName]"></asp:SqlDataSource>
                       

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
                               <asp:DropDownList ID="ddlDistricts" runat="server" DataSourceID="SqlDataSource2" DataTextField="DistrictName" DataValueField="DistrictID" CssClass="form-control">
                               <asp:ListItem Value="-1">-Select District-</asp:ListItem>
                                 <asp:ListItem></asp:ListItem>
                             </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT [DistrictName], [DistrictID], [StateID] FROM [Districts] WHERE ([StateID] = @StateID) ORDER BY [DistrictName]">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="ddlStates" Name="StateID" PropertyName="SelectedValue" Type="Int32" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                        </td>
                        </ContentTemplate>
            </asp:UpdatePanel>
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
                                <span class="box">    <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="btn btn-primary" Width="100px" height="36px" OnClick="btnSignup_Click" /></span>
                                 <span class="box"> <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-info" Width="100px" height="36px" OnClick="btnReset_Click" /></span>
                             </div>
                            </div>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5" class="text-center box">
                            <div style="text-align: center; height: 31px" >
                                 Already have an account?
                            <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/LoginPage.aspx">Login</asp:HyperLink>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5" class="text-center box">
                            <div style="text-align: center; height: 30px" >
                               <asp:HyperLink ID="hypAboutUs" runat="server" NavigateUrl="~/User/UserDefault.aspx">HOME</asp:HyperLink>
                            </div>
                        </td>
                    </tr>
                </table>
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
                                  <label style="color:black">User Created Sucessfully&nbsp;</label><asp:HyperLink ID="hyplogin" runat="server" ForeColor="Yellow" NavigateUrl="~/LoginPage.aspx">Click Here To Login</asp:HyperLink>
                                </div>
                             </center> 
                        </td>
                    </tr>
                </table>
              
                    </asp:View>
                </asp:MultiView>
              
    </div>
    </form>
</body>
</html>
