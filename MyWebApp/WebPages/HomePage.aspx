<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyWebApp._Default"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Welcome to SDMS Portal!!!</title>
    <link href="CSS/HomePage.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id = "Login">
    <table id="tab">
    <tr>
    <td>
    </td>
    <td>
        <table>
    <tr>
        <td>
        <asp:Label ID="usrnmlbl" runat="server" Text="Username:"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="Usernmtxtbx" runat="server"></asp:TextBox>
        </td>
        <td>
        <asp:Label ID="passwdlbl" runat="server" Text="Password:"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="Passtxtbx" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
        <asp:Button ID="loginbtn" runat="server" onclick="loginbtn_Click" 
        Text="Login" />
        </td>
    </tr>
    </table>
    </td>
    </tr>
    <tr>
    <td>
    </td>
    <td>
        <asp:Label ID="Resultlbl" runat="server"></asp:Label>
        <asp:Button ID="signupbtn" runat="server" onclick="signupbtn_Click" 
            Text="Sign Up" />
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
