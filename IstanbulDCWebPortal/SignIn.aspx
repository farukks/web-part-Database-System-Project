<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="IstanbulDCWebPortal.SıgnIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign In</title>
</head>
<body style="background-color: cadetblue">
    <form id="form1" runat="server">
        <table style="margin: auto; width: 356px">
            <tr>
                <td colspan="2" style="border:thin">
                    <div>
                        &nbsp;<img src="logo.png" style="width: 340px; height:75px;" />
                    </div>
                </td>
            </tr>
            <tr>
                <td style="border:solid;border-block-color:black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold;">
                        UserID
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="LoginUserID" runat="server" EnableTheming="True" Wrap="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border:solid;border-block-color:black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold">
                        Password
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="LoginPassword" TextMode="Password" runat="server" EnableTheming="True" Wrap="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="margin: auto; position: relative; font-size: large; font-weight: bold; text-align: center">
                        <asp:Button ID="LoginSignIn" runat="server" OnClick="SignIn" Text="Sign In" />
                    </div>
                </td>
                <td>
                    <div style="margin: auto; position: relative; font-size: large; font-weight: bold; text-align: center">
                        <asp:Button ID="LoginSignUp" runat="server" OnClick="LoadCustomerSignUp" Text="Sign Up" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div style="margin: auto; font-size: large; font-weight: bold">
                        <asp:Label ID="UserFullName" runat="server" Text=" "></asp:Label>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div style="margin: auto; font-size: large; font-weight: bold">
                        <asp:Label ID="UserMsg" runat="server" Text=" "></asp:Label>
                    </div>
                </td>
            </tr>
        </table>

        
    </form>
</body>
</html>
