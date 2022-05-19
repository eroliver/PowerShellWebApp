<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PowerShellWebApp.Default" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>

<form id="form1" runat="server">
    <div>
        <table>
            <tr><td>&nbsp;</td><td><h1 align="left">PowerShell Get-Process Tests</h1></td></tr>
            <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td><td>Enter text here to search for a particular process or leave blank to see all processes.</td></tr>
            <tr><td>
                <br />
                </td><td>
                <asp:TextBox ID="Input" runat="server" TextMode="SingleLine" Width="433px" Height="50px" ></asp:TextBox>
            </td></tr>
            <tr><td>
                &nbsp;</td><td>
                <asp:Button ID="ExecuteCode" runat="server" Text="Execute" Width="200" onclick="ExecuteCode_Click" />
            </td></tr>
                <tr><td>&nbsp;</td><td><h3>Processes:</h3></td></tr>
                <tr><td>
                    &nbsp;</td><td>
                    <asp:TextBox ID="ResultBox" TextMode="MultiLine" Width="700" Height="200" runat="server"></asp:TextBox>
                </td></tr>
        </table>
    </div>

    <div>
        <table>
            <tr><td>&nbsp;</td><td><h1 align="left">PowerShell System Info Tests</h1></td></tr>
            <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td><td>Choose the information you'd like to retrieve about the host machine and click the LookUp button.</td></tr>
            <tr><td>
                <br />
                </td><td>
                <asp:DropDownList id="SystemInfoList"
                    runat="server">

                  <asp:ListItem Selected="True" Value="csname"> Host Name </asp:ListItem>
                  <asp:ListItem Value="lastbootuptime"> Last Boot Time </asp:ListItem>
                  <asp:ListItem Value="BuildNumber"> OS Build Number </asp:ListItem>
                  <asp:ListItem Value="LocalDateTime"> Local Date Time </asp:ListItem>

               </asp:DropDownList>
            </td></tr>
            <tr><td>
                &nbsp;</td><td>
                <asp:Button ID="RetrieveSysInfo" runat="server" Text="LookUp" Width="150" onclick="RetrieveSelectedSystemInfo" />
            </td></tr>
                <tr><td>&nbsp;</td><td><asp:TextBox ID="SystemInfoTitle" runat="server" TextMode="SingleLine" Width="433px" Height="50px" BorderWidth="0" Text="System Information:" ReadOnly="True"></asp:TextBox></td></tr>
                <tr><td>
                    &nbsp;</td><td>
                    <asp:TextBox ID="SystemOutput" TextMode="MultiLine" Width="700" Height="200" runat="server"></asp:TextBox>
                </td></tr>
        </table>
    </div>

</form>
</body>
</html>
