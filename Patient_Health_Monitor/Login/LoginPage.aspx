<%@ Page Language="C#" AutoEventWireup="true" Theme="Skin1" CodeBehind="LoginPage.aspx.cs" Inherits="Patient_Health_Monitor.LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
      <link href="~/Styles/loginpages.css" rel="stylesheet" type="text/css" />  
        


    
    <style type="text/css">
        .style1
        {
            height: 31px;
        }
        .style2
        {
            height: 38px;
        }
    </style>
        


    
</head>
<body>
    <form id="form1" runat="server">
    <div id = "logo" class="loggo"><br />&nbsp;<br /><br />
        <img src="../Images/oie_transparent (1).png" 
            style="margin-left: 31px; margin-top: 37px" /></div>
    <div id = "Head" class= "heading" align = "center" >
        <h1 align="left">Patient Health Monitor</h1></div>
    <div>
        <p>&nbsp;</p>
    <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
        <fieldset class="login">
    <%--<legend align = "center" class ="legend">Log-In Information</legend>--%>

            <table class="table" cellspacing ="3" cellpadding ="3">
                <tr>
                    <td>
                        <asp:Label ID="lgn" runat="server" Text="LoginId:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:TextBox ID="lognid" SkinID="sktxt" runat="server" Width="30%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="pwd" runat="server" Text="Password:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="password" SkinID="sktxt" TextMode="Password" runat="server" Width="30%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="loginbtn" SkinID=sk1  runat="server" Text="Log-In" 
                        onclick="loginbtn_Click"  />
                        
                        <asp:Label ID="Label1" runat="server" ForeColor="#CC3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    &nbsp;New Users register here:
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#663300" 
                        onclick="LinkButton1_Click">New User registration</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </fieldset> </div>
    </form>
</body>
</html>
