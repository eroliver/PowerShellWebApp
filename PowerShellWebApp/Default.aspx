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
            <tr><td>&nbsp;</td><td>Enter text here to search for a particular process</td></tr>
            <tr><td>
                <br />
                </td><td>
                <asp:TextBox ID="Input" runat="server" TextMode="MultiLine" Width="433px" Height="73px" ></asp:TextBox>
            </td></tr>
            <tr><td>
                &nbsp;</td><td>
                <asp:Button ID="ExecuteCode" runat="server" Text="Execute" Width="200" onclick="ExecuteCode_Click" />
            </td></tr>
                <tr><td>&nbsp;</td><td><h3>Matching Processes:</h3></td></tr>
                <tr><td>
                    &nbsp;</td><td>
                    <asp:TextBox ID="ResultBox" TextMode="MultiLine" Width="700" Height="200" runat="server"></asp:TextBox>
                </td></tr>
        </table>
    </div>
</form>
</body>
</html>
