<%@ Page Language="C#" AutoEventWireup="true"  Theme="Skin1" CodeBehind="Registeration.aspx.cs" Inherits="Patient_Health_Monitor.Login.Registeration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <%--<style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>--%>
    <link href="~/Styles/loginpages.css" rel="stylesheet" type="text/css" />  
   

   
    <style type="text/css">
                
        .style2
        {
            height: 5px;
            width: 330px;
        }
        
    </style>
   

   
</head>
<body>
    <form id="form1" runat="server">

    <div>
    <fieldset class="loginreg">
    <table class="tablereg" cellpadding = "3" cellspacing ="3">
        
        <tr>
            <td class="style2" >
                <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
            &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" SkinID="sktxt" MaxLength="30"  
                    ToolTip="Alphanumeric,Uppercase,Lowercase,Underscore" 
                    style="margin-left: 41px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Invalid User Name" 
                    ValidationExpression="^[a-zA-Z0-9_ ]+$" ForeColor="#CC3300" 
                    ToolTip="Not more than 30 letters"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter User Name" 
                    ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label2" runat="server" Text="Email Id:"></asp:Label>
            &nbsp;
                <asp:TextBox ID="TextBox2" runat="server" SkinID="sktxt" 
                    style="margin-left: 60px" 
                    ToolTip="valid email format"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Invalid Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="#CC3300"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
            &nbsp;
                <asp:TextBox ID="TextBox3" TextMode ="Password" runat="server" SkinID="sktxt" 
                    style="margin-left: 50px" 
                    ToolTip="min 8 char,max 20, no space &amp; can contain !@#$%_*&amp;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Invalid Password" 
                    ForeColor="#CC3300" ValidationExpression="^[\w\d!@#$%_*&amp;]{8,30}$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Password" 
                    ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label>
            &nbsp;
                <asp:TextBox ID="TextBox4" TextMode ="Password" runat="server" SkinID="sktxt" 
                    style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                    ErrorMessage="Passwords Mismatch" ForeColor="#CC3300"></asp:CompareValidator>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Confirm Password" 
                    ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Button ID="submit" runat="server" Text="Create User" SkinID=sk2 
                    onclick="submit_Click" />
                <asp:Label ID="Label5" runat="server" ForeColor="#CC3300"></asp:Label>
                </td>
        </tr>

    </table>
    &nbsp;
    </fieldset>
     </div>
    </form>
</body>
</html>
