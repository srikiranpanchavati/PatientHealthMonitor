<%@ Page Language="C#" AutoEventWireup="true" Theme="Skin1" CodeBehind="DiabetesRiskCalc.aspx.cs" MasterPageFile = "~/Site.Master" Inherits="PHM.DiabetesRiskCalc" %>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">--%>































































<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">


    <title></title>
    <style type="text/css">


        .style1
        {
            width: 53%;
            height: 394px;
        }
    sup,sub{line-height:1em}
        .style2
        {
            width: 170px;
        }
        .style3
        {
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <%--</head>
<body>
    <form id="form1" runat="server">--%>
    <div style="height: 723px">
    
        <table class="style1">
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Diabetes Risk Calculation&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    BMI(kg/m<sup>2</sup>)</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" SkinID="sktxt"
                        ToolTip="BMI" style="margin-left: 0px" AutoPostBack="True"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Mandatory Field" Display="Dynamic" 
                        ForeColor="#CC3300" ValidationGroup="validate"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator6" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Invalid Reading" ForeColor="#CC3300" 
                        MaximumValue="200" MinimumValue="0.001" Type="Double" 
                        ValidationGroup="validate"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Systolic BP(mmHg)</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" SkinID="sktxt"
                        ToolTip="Systolic Pressure"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Mandatory Field" 
                        Display="Dynamic" ForeColor="#CC3300" ValidationGroup="validate"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator7" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Invalid Reading" ForeColor="#CC3300" 
                        MaximumValue="500" MinimumValue="1" Type="Double" 
                        ValidationGroup="validate"></asp:RangeValidator>
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    Diastolic BP(mmHg)</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" SkinID="sktxt"
                        ToolTip="Diastolic Pressure"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Mandatory Field" 
                        Display="Dynamic" ForeColor="#CC3300" ValidationGroup="validate"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator8" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Invalid Reading" ForeColor="#CC3300" 
                        MaximumValue="300" MinimumValue="1" Type="Double" 
                        ValidationGroup="validate"></asp:RangeValidator>
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    Fasting Glucose(mg/Dl)</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server" SkinID="sktxt"
                        ToolTip="Fasting Glucose"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Mandatory Field" 
                        Display="Dynamic" ForeColor="#CC3300" ValidationGroup="validate"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Invalid Reading" ForeColor="#CC3300" 
                        MaximumValue="700" MinimumValue="1" Type="Double" 
                        ValidationGroup="validate"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    HDL Cholestrol(mg/Dl)</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox5" runat="server" SkinID="sktxt"
                        ToolTip="HDL Cholestrol"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Mandatory Field" 
                        Display="Dynamic" ForeColor="#CC3300" ValidationGroup="validate"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Invalid Reading" ForeColor="#CC3300" 
                        MaximumValue="300" MinimumValue="1" Type="Double" 
                        ValidationGroup="validate"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Serum Triglycerides(mg/Dl)</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox6" runat="server" SkinID="sktxt"
                        ToolTip="Serum Triglycerides"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox6" 
                        ErrorMessage="Mandatory Field" Display="Dynamic" 
                        ForeColor="#CC3300" SetFocusOnError="True" ValidationGroup="validate"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Invalid Reading" ForeColor="#CC3300" 
                        MaximumValue="3000" MinimumValue="1" Type="Double" 
                        ValidationGroup="validate"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Risk Percent(%) 
                </td>
                <td class="style3" colspan="2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" SkinID="sk2" width="115px"
                        Text="Calculate Risk" ValidationGroup="validate" />
                </td>
                <td class="style3">
                    <br />
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" width="115px"
                        Text="Add To History" SkinID="sk2"  />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="3" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    
    </div>
        </asp:Content>
<%--    </form>
</body>
</html>--%>
