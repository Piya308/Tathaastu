<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="User_Donation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="../css/font-awesome.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link rel="../stylesheet" href="../https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />
    <script src="../https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="../https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css"/>
    <title></title>
    <style type="text/css">
        
        .auto-style2 {
            text-align: center;
            width: 139px;
        }
        txtwidth{
            width:180px;
        }
        .padding{
            padding:0px 38px;
        }
        .r2{
            padding:8px 0px;
        }
        .auto-style9 {
            width: 678px;
        }
        .auto-style10 {
            height: 90px;
        }
        .auto-style11 {
            width: 678px;
            height: 90px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
                <center >
                    <h2 style="font-weight: bold; font-size: 35px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;background-color:mediumorchid">Donation Details</h2>
                </center>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <span style="color:red">Loading... Please Wait</span>
                    </ProgressTemplate>
                </asp:UpdateProgress>
                  
                      <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                          <asp:View ID="View1" runat="server">
                              <table cellpadding="0" cellspacing="0" class="w-100">
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" class="w-100">
                                <tr>
                                    <td class="text-right">
                                        <label>Date:</label><asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                                        <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" BehaviorID="txtDate_CalendarExtender" Format="MM-dd-yyyy" TargetControlID="txtDate" />
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required*" ControlToValidate="txtDate" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid date" ControlToValidate="txtDate" Display="Dynamic" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Date"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" class="w-100">
                                            <tr >
                                                <td class="text-right r2">
                                                <label>
                                                    Select State:
                                                </label> 
                                                </td>
                                                <td class="text-right r2">
                                                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceState" DataTextField="StateName" DataValueField="StateID" Width="180px" AutoPostBack="True"></asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourceState" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT * FROM [States]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-right r2">
                                                    <label> 
                                                        Select Distrct:
                                                    </label>
                                                </td>
                                                <td class="auto-style9">
                                                    <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceDistrict" DataTextField="DistrictName" DataValueField="DistrictID" Width="180px"></asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourceDistrict" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT [DistrictID], [DistrictName] FROM [Districts] WHERE ([StateID] = @StateID) ORDER BY [DistrictName]">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="ddlState" Name="StateID" PropertyName="SelectedValue" Type="Decimal" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-right r2">
                                                <label>
                                                    Select NGO:
                                                </label> 
                                                </td>
                                                <td class="auto-style9">
                                                      <asp:DropDownList ID="ddlNGO" runat="server" CssClass="form-control" Width="180px" DataSourceID="SqlDataSourceNGO" DataTextField="NGOName" DataValueField="NGOID"></asp:DropDownList>
                                                       <asp:SqlDataSource ID="SqlDataSourceNGO" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT [NGOID], [NGOName], [DistrictID] FROM [NGO] WHERE ([DistrictID] = @DistrictID) ORDER BY [NGOName]">
                                                           <SelectParameters>
                                                               <asp:ControlParameter ControlID="ddlDistrict" Name="DistrictID" PropertyName="SelectedValue" Type="String" />
                                                           </SelectParameters>
                                                      </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td class="auto-style9">&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <table>
                                <tr>
                                    <td class="text-center">
                                        <label>
                                            Select Category:
                                        </label>
                                    </td>
                                    <td class="text-center">
                                        <label>
                                            Enter Quantity:
                                        </label>
                                    </td>
                                    <td class="text-center">
                                        <label>
                                            Select Picture:
                                        </label>
                                    </td>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text-center padding">
                                        <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProductCategoryName" DataValueField="ProductCategoryID" CssClass="form-control" Width="180px" ValidationGroup="A">
                                        </asp:DropDownList>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT [ProductCategoryID], [ProductCategoryName] FROM [ProductCategory] ORDER BY [ProductCategoryName]"></asp:SqlDataSource>
                                    </td>
                                    <td class="text-center padding">
                                        <asp:TextBox ID="txtQty" runat="server" CssClass="form-control" Width="150px" ValidationGroup="A"></asp:TextBox>
                                        <cc1:FilteredTextBoxExtender ID="txtQty_FilteredTextBoxExtender" runat="server" BehaviorID="txtQty_FilteredTextBoxExtender" TargetControlID="txtQty" ValidChars="1234567890" />
                                        <cc1:TextBoxWatermarkExtender ID="txtQty_TextBoxWatermarkExtender" runat="server" BehaviorID="txtQty_TextBoxWatermarkExtender" TargetControlID="txtQty" WatermarkText="Enter Quantity" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required*" ControlToValidate="txtQty" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationGroup="A"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtQty" Display="Dynamic" ErrorMessage="Invalid Quantity" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" ValidationGroup="A"></asp:CompareValidator>
                                    </td>
                                    <td class="text-center" style="padding-left:20px">
                                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select An Image*" ControlToValidate="FileUpload1" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click1" ValidationGroup="A" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" />
                                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" />
                                    <asp:BoundField DataField="Qty" HeaderText="Quantity" />
                                    <asp:TemplateField HeaderText="Picture">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Pict") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Height="122px" ImageUrl='<%# Eval("Pic") %>' Width="201px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ButtonField CommandName="Del" Text="Remove" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                        <label>Total Quantity:</label>    
                            <asp:Label ID="lblTotalQty" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
                            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
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
                                  <label style="color:black">Donated Sucessfully!&nbsp;</label><asp:HyperLink ID="hyplogin" runat="server" ForeColor="Yellow" NavigateUrl="~/UserDefault.aspx">Click Here To Go Back To The HOME</asp:HyperLink>
                                </div>
                             </center> 
                        </td>
                    </tr>
                </table>
                          </asp:View>
                      </asp:MultiView>

         
    </form>
</body>
</html>

