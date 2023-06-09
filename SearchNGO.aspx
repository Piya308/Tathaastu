<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="SearchNGO.aspx.cs" Inherits="SearchNGO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 435px;
        }
        .auto-style18 {
            width: 554px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
        <table>
            <tr>
               <td class="auto-style17">
                  <label>
        Select State:
    </label>
    <asp:DropDownList ID="DDLState" runat="server" DataSourceID="SqlDataSourceState" DataTextField="StateName" DataValueField="StateID" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceState" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT * FROM [States] ORDER BY [StateID]"></asp:SqlDataSource>
               </td>
                <td class="auto-style18">
                    <label>
        Select District:
    </label>
    <asp:DropDownList ID="DDLDistrict" runat="server" DataSourceID="SqlDataSourceDistrict" DataTextField="DistrictName" DataValueField="DistrictName"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceDistrict" runat="server" ConnectionString="<%$ ConnectionStrings:TathaastuCon %>" SelectCommand="SELECT * FROM [Districts] WHERE ([StateID] = @StateID) ORDER BY [DistrictID]">
        <SelectParameters>
            <asp:ControlParameter ControlID="DDLState" Name="StateID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
</asp:Content>

