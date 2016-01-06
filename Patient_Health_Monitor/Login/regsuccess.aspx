<%@ Page Language="C#" AutoEventWireup="true" Theme="Skin1" CodeBehind="regsuccess.aspx.cs" Inherits="Patient_Health_Monitor.Login.regsuccess" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <%--<style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>--%>
    <link href="~/Styles/loginpages.css" rel="stylesheet" type="text/css" />  
    <style type="text/css">

 p.MsoNormal
	{margin-top:1.3pt;
	margin-right:5.75pt;
	margin-bottom:12.0pt;
	margin-left:0in;
	line-height:12.0pt;
	font-size:10.0pt;
	font-family:"Arial","sans-serif";
	}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <fieldset class="loginreg" style="color: #663300">
    
        <br />
        <br />
        <br />
        Your account has been created Successfully!<br />
        <br />
        <br />
        <br />
        Your Login Id Is:&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="#F9E3CB" BorderColor="#663300" 
            BackColor="#613D2D"></asp:Label>
        <br />
        <br />
        [ Please note down Login Id and login with this id henceforth ]<br />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#663300" 
            onclick="LinkButton1_Click">Click Here To Login</asp:LinkButton>
    
    </fieldset>
     </div>
    </form>
</body>
</html>
