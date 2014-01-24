<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="MyWebApp.WebPages.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Sign Up To SDMS</title>
</head>
<body>
    <form id="form1" runat="server">
    <div dir="ltr">
   <table>
    <tr>
        <td><asp:Label ID="usernamelbl" runat="server" Text="Username"></asp:Label></td>
        <td><asp:TextBox ID="usernametxtbox" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Username required" ControlToValidate="usernametxtbox"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>   
        <td><asp:Label ID="passwordlbl" runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox ID="passwordtxtbox" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="Password Required" ControlToValidate="passwordtxtbox"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="passwordlngthrev" runat="server" 
                ControlToValidate="passwordtxtbox" 
                ErrorMessage="Enter Password between 8 - 16 " 
                ValidationExpression="^[a-zA-z0-9].{8,16}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="confirmpasslbl" runat="server" Text="Confirm Password"></asp:Label>
        </td>
    <td>
        <asp:TextBox ID="confirmpasstxtbox" runat="server"></asp:TextBox>
        </td>
    <td>
        <asp:CompareValidator ID="passwordcmpvf" runat="server" 
            ControlToCompare="passwordtxtbox" ControlToValidate="confirmpasstxtbox" 
            ErrorMessage="Passwords do not match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Emailidlbl" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="EmailIdtxtbox" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Please Enter a valid email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="usertypelbl" runat="server" Text="Select User Type"></asp:Label>
        </td>
    
         <asp:RadioButtonList ID="Usertyperblist" runat="server" AutoPostBack="True" 
            RepeatDirection="Horizontal" 
            onselectedindexchanged="UserSelectrblist_SelectedIndexChanged">
         <asp:ListItem>Faculty</asp:ListItem>
         <asp:ListItem>Student</asp:ListItem>
        </asp:RadioButtonList>
    </tr>
    <tr><td colspan="3">
        <center>
            <asp:Button ID="submitbtn" runat="server" Text="Submit"
            ToolTip="Submit your details to our system" onclick="submitbtn_Click" /></center>
        </td></tr>
   </table>
        
    </div>
   </form>
</body>
</html>
