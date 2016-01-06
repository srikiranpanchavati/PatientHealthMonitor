<%@ Page Language="C#" AutoEventWireup="true" Theme="Skin1" MasterPageFile="~/Site.Master" CodeBehind="User Profile.aspx.cs" Inherits="Patient_profile.WebForm1" %>




<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">--%>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">


    <title></title>
    <style type="text/css">
        .style1
        {
            width: 45%;
            margin-right: 23px;
        }
        .style2
        {
            width: 147px;
        }
        .style3
        {
            width: 147px;
            height: 23px;
        }
        .style5
        {
            width: 147px;
            height: 37px;
        }
        .style9
        {
            width: 147px;
            height: 30px;
        }
        .style11
        {
            width: 459px;
        }
        .style12
        {
            width: 459px;
            height: 30px;
        }
        .style13
        {
            width: 459px;
            height: 23px;
        }
        .style14
        {
            width: 459px;
            height: 37px;
        }
    </style>
<%--</head>
<body style="margin-right: 289px">
    <form id="form1" runat="server">--%>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div >


     
        <asp:Image type ="hidden" ID="Image2" runat="server" Height="93px" Width="109px" />
&nbsp;</div>
    <div align="center">
    
        
        <table 
            class="style1" align="left">
            <tr>
                <td class="style2" align="left">
                    User Name</td>
                <td class="style11" align="left">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" align="left">
                    First Name</td>
                <td class="style11" align="left">
                    
                    <asp:TextBox ID="TextBox2" runat="server"  SkinID="sktxt"
                        ToolTip="It contains less than 30characters and no special characters" 
                        ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Its incorrect format" 
                        ValidationExpression="[^!@#$%^&amp;*()]{0,29}" ForeColor="Red" 
                        ValidationGroup="val"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2" align="left">
                    Last Name</td>
                <td class="style11" align="left">
                    
                    <asp:TextBox ID="TextBox3" runat="server" SkinID="sktxt"
                        ToolTip="It contains less than 30characters and no special characters" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Its incorrect format" 
                        ValidationExpression="[^!@#$%^&amp;*()]{0,29}" ForeColor="Red" 
                        ValidationGroup="val"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2" align="left">
                    Gender</td>
                <td class="style11" align="left">
                    <asp:RadioButton ID="RadioButton1" Checked="true" runat="server" GroupName="pradeep" 
                         Text="M" BackColor="#F9E3CB"  />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="pradeep" 
                        Text="F" BackColor="#F9E3CB" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2" align="left">
                    DOB</td>
                <td class="style11" align="left">
                    &nbsp;Year:
                    <asp:DropDownList ID="DropDownList5" runat="server" BackColor="#F9E3CB">
                    </asp:DropDownList>
&nbsp; Month:&nbsp;
                    <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList6_SelectedIndexChanged" 
                        BackColor="#EAD5BF">
                        <asp:ListItem Value="0">Select Month</asp:ListItem>
                        <asp:ListItem Value="01">Jan</asp:ListItem>
                        <asp:ListItem Value="02">Feb</asp:ListItem>
                        <asp:ListItem Value="03">Mar</asp:ListItem>
                        <asp:ListItem Value="04">Apr</asp:ListItem>
                        <asp:ListItem Value="05">May</asp:ListItem>
                        <asp:ListItem Value="06">Jun</asp:ListItem>
                        <asp:ListItem Value="07">Jul</asp:ListItem>
                        <asp:ListItem Value="08">Aug</asp:ListItem>
                        <asp:ListItem Value="09">Sep</asp:ListItem>
                        <asp:ListItem Value="10">Oct</asp:ListItem>
                        <asp:ListItem Value="11">Nov</asp:ListItem>
                        <asp:ListItem Value="12">Dec</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;<br />
&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <br />
                    <asp:TextBox ID="TextBox14" runat="server" SkinID="sktxt"
                        ontextchanged="TextBox14_TextChanged" ReadOnly="True" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" align="left">
                    Address</td>
                <td class="style11" align="left">
                    
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                        ToolTip="it should contain lessthan 100 characters" BackColor="#F9E3CB"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="incorrect format" 
                        ValidationExpression="[a-zA-Z0-9!@#$%^&amp;*() ]{0,99}" ForeColor="Red" 
                        ValidationGroup="val"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2" align="left">
                    City</td>
                <td class="style11" align="left">
                    <asp:TextBox ID="TextBox5" SkinID="sktxt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2" align="left">
                    State</td>
                <td class="style11" align="left">
                    <asp:DropDownList ID="DropDownList4" runat="server" BackColor="#F9E3CB">
                        <asp:ListItem>AP</asp:ListItem>
                        <asp:ListItem>k</asp:ListItem>
                        <asp:ListItem>MP</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="DropDownList4" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2" align="left">
                    Zip Code</td>
                <td class="style11" align="left">
                    <asp:TextBox ID="TextBox6" runat="server" SkinID="sktxt"
                        ToolTip="it should be in format of(#####).eg:54689"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Invalid Format" 
                        ValidationExpression="[0-9]{5}" ForeColor="Red" ValidationGroup="val"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red" ValidationGroup="val">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style9" align="left">
                    Phone Number</td>
                <td class="style12" align="left">
                    <asp:TextBox ID="TextBox7" runat="server" SkinID="sktxt"
                        ToolTip="It should be in format(###-###-####)  .eg :961-874-2524" 
                        Height="20px" style="margin-left: 0px; margin-top: 0px" Width="127px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Invalid Format" 
                        ValidationExpression="[0-9]{3}[-]{1}[0-9]{3}[-]{1}[0-9]{4}" 
                        ForeColor="Red" ValidationGroup="val"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox7" 
                        ErrorMessage="RequiredFieldValidator" ForeColor="Red" 
                        ValidationGroup="val">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    EMail Id</td>
                <td class="style13" align="left">
                    <asp:TextBox ID="TextBox8" runat="server" SkinID="sktxt"
                        ToolTip="it should be in the format of (For ex. test@testmail.com)"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                        runat="server" ControlToValidate="TextBox8" ErrorMessage="Its incorrect format" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ForeColor="Red" ValidationGroup="val"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    PCP First Name</td>
                <td class="style13" align="left">
                    <asp:TextBox ID="TextBox9" runat="server" SkinID="sktxt"
                        ToolTip="It contains less than 30characters and no special characters" 
                        ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="Its incorrect format" 
                        ValidationExpression="[^!@#$%^&amp;*()]{0,29}" ForeColor="Red" 
                        ValidationGroup="val"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    PCP Last Name</td>
                <td class="style13" align="left">
                    <asp:TextBox ID="TextBox10" runat="server" SkinID="sktxt"
                        ToolTip="It contains less than 30characters and no special characters"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="Its incorrect format" 
                        ValidationExpression="[^!@#$%^&amp;*()]{0,29}" ForeColor="Red" 
                        ValidationGroup="val"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    PCP Phone Number</td>
                <td class="style13" align="left">
                    <asp:TextBox ID="TextBox11" runat="server" SkinID="sktxt"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                        runat="server" ControlToValidate="TextBox11" 
                        ErrorMessage="Its incorrect Format" ForeColor="Red" 
                        ValidationExpression="[0-9]{3}[-]{1}[0-9]{3}[-]{1}[0-9]{4}" 
                        ValidationGroup="val"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    Guardian First Name</td>
                <td class="style13" align="left">
                    <asp:TextBox ID="TextBox12" runat="server" SkinID="sktxt"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    Guardian Last Name</td>
                <td class="style13" align="left">
                    <asp:TextBox ID="TextBox13" runat="server" SkinID="sktxt"></asp:TextBox>
                    <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    Profile Picture</td>
                <td class="style13" align="left">
                    <asp:FileUpload  
                        ID="FileUpload1" runat="server" ToolTip="It should be .jpg or .png" 
                        BackColor="#F9E3CB" />
                       
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                        runat="server" ControlToValidate="FileUpload1" 
                        ErrorMessage="invalid format " 
                        ValidationExpression="[^'&quot;&lt;&gt;]+?\.(jpg|png)$" ForeColor="Red"></asp:RegularExpressionValidator>
&nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                       
                    <br />
                       
              </td>
            </tr>
            <tr>
                <td class="style5" align="left">
                </td>
                <td class="style14" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    <asp:Button ID="Button1"  runat="server" Text="Save" SkinID="sk1" 
                        onclick="Button1_Click" ValidationGroup="val" ViewStateMode="Disabled" 
                          />
                </td>
                <td class="style13" align="left">
                    <asp:Button ID="Button2" runat="server" Text="View Updated" SkinID="sk2" 
                        onclick="Button2_Click" Visible="False"/>
                </td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    &nbsp;</td>
                <td class="style13" align="left">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" align="left">
                    &nbsp;</td>
                <td class="style13" align="left">
                    <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </asp:Content>
<%--    </form>
</body>
</html>--%>
