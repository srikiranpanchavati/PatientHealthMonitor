<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="errorpage.aspx.cs" Inherits="Patient_Health_Monitor.errorpage" %>

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
<br /><br /><br /><br /><br /><br /><br />
    Exception occured, Please try again Later. &nbsp;&nbsp; 
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Go Back</asp:LinkButton>
    
    </fieldset>
     </div>
    </form>
</body>
</html>
