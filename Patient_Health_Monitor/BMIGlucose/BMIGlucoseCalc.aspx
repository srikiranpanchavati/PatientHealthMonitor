<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" Theme="Skin1"  AutoEventWireup="true" CodeBehind="BMIGlucoseCalc.aspx.cs" Inherits="Patient_Health_Monitor.BMIGlucoseCalc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:Panel ID="Panel1" runat="server">
    <table cellpadding = "5" cellspacing = "5">
    <caption>BMI Calculator</caption>
    <tr>      
    <td>
        <asp:Label ID="Label1" runat="server" Text="Height (in metres):"></asp:Label>
    </td>
    <td>
        <asp:TextBox SkinID="sktxt"  ID="TextBox2" runat="server"></asp:TextBox>
    </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter Height" ForeColor="#CC3300" 
                ValidationGroup="bmi1"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Invalid Height" ForeColor="#CC3300" 
                MaximumValue="30" MinimumValue="0.01" Type="Double" ValidationGroup="bmi1"></asp:RangeValidator>
            <br />
        </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Weight (in kg):"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" SkinID="sktxt" runat="server"></asp:TextBox>
    </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter Weight" ForeColor="#CC3300" 
                ValidationGroup="bmi1"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Invalid Weight" ForeColor="#CC3300" 
                MaximumValue="500" MinimumValue="1" Type="Double" ValidationGroup="bmi1"></asp:RangeValidator>
            <br />
        </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="Button1" SkinID=sk2 runat="server" Text="Calculate BMI" width="115px"
            onclick="Button1_Click" ValidationGroup="bmi1" />
    </td>
    <td>
    </td>   
        <td>
            &nbsp;</td>
    </tr>
    </table>
        <br />
        <p ID="p1" runat ="server"></p>
    <hr />

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
        <br />
    </asp:Panel>
    
    

    <asp:Panel ID="Panel2" runat="server">
    <table cellpadding = "5" cellspacing = "5">
    <caption>Glucometer</caption>
    <tr>      
    <td>
        <asp:Label ID="Label3" runat="server" Text="Time:"></asp:Label>
    </td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#F9E3CB">
            <asp:ListItem Value="1">Morning</asp:ListItem>
            <asp:ListItem Value="2">Afternoon</asp:ListItem>
            <asp:ListItem Value="3">Evening</asp:ListItem>
        </asp:DropDownList>
    </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label4" runat="server" Text="Glucose Reading:"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox4" SkinID="sktxt" runat="server"></asp:TextBox>
    </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Enter Glucose reading" 
                ForeColor="#CC3300" ValidationGroup="gluc"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Invalid Glucose Level" 
                ForeColor="#CC3300" MaximumValue="900" MinimumValue="1" Type="Double" 
                ValidationGroup="gluc"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label5" runat="server" Text="Other Notes:"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox5" SkinID="sktxt" runat="server"></asp:TextBox>
    </td>   
        <td>
            &nbsp;</td>
    </tr>
        <tr>
            <td>              
            </td>
            <td>
            <asp:Button ID="Button3" runat="server" SkinID=sk1  Text="Save" onclick="Button3_Click" 
                    ValidationGroup="gluc" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        <br />
        <hr />
        <p ID="p2" runat ="server"></p>
        <asp:GridView ID="GridView2" runat="server" CellPadding="3" BackColor="#DEBA84" 
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

        

    </asp:Panel>


    <asp:LinkButton class ="linkbtn"  ID="LinkButton1" runat="server" 
        onclick="LinkButton1_Click">BMI Calculator</asp:LinkButton><br />

        <asp:LinkButton class ="linkbtn" ID="LinkButton2" runat="server" 
        onclick="LinkButton2_Click">Glucometer</asp:LinkButton>

<br />
<br />
<br />

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
