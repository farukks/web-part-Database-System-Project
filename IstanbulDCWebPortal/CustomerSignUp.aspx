<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerSignUp.aspx.cs" Inherits="IstanbulDCWebPortal.CustomerSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sign Up</title>
</head>
<body style="background-color: cadetblue">
    <form id="form1" runat="server">
        <table style="margin: auto; width: 356px">
            <tr>
                <td colspan="2" style="border: thin">
                    <div>
                        &nbsp;<img src="logo.png" style="width: 340px; height: 75px;" />
                    </div>
                </td>
            </tr>
            <tr>
                <td style="border: solid; border-block-color: black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold;">
                        Ssn
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="Ssn" runat="server" EnableTheming="True" Wrap="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: solid; border-block-color: black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold">
                        First Name
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="FirstName" runat="server" EnableTheming="True" Wrap="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: solid; border-block-color: black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold">
                        Last Name
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="LastName" runat="server" EnableTheming="True" Wrap="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: solid; border-block-color: black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold">
                        Gender
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="Gender" runat="server" EnableTheming="True" Wrap="True" placeholder="E or K"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: solid; border-block-color: black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold">
                        Birthdate
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="Birthdate" runat="server" EnableTheming="True" Wrap="True" placeholder="YYYY-MM-DD"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: solid; border-block-color: black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold">
                        E-Mail
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="Mail" runat="server" EnableTheming="True" Wrap="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: solid; border-block-color: black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold">
                        Phone Number
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="PhoneNumber" runat="server" EnableTheming="True" Wrap="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: solid; border-block-color: black;">
                    <p style="margin: auto; position: center; font-size: large; font-weight: bold">
                        Password
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="UserPassword" TextMode="Password" runat="server" EnableTheming="True" Wrap="True" placeholder="Minimum 8 characters"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="margin: auto; position: relative; font-size: large; font-weight: bold; text-align: center">
                        <asp:Button ID="SignIn" runat="server" OnClick="LoadSignIn" Text="Sign In" />
                    </div>
                </td>
                <td>
                    <div style="margin: auto; position: relative; font-size: large; font-weight: bold; text-align: center">
                        <asp:Button ID="SignUp" runat="server" OnClick="AddCustomer" Text="Sign Up" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div style="margin: auto; font-size: large; font-weight: bold">
                        <asp:Label ID="SignUpMsg" runat="server" Text=" "></asp:Label>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="UserProperties" runat="server" Width="345px">
                    </asp:GridView>
                </td>
            </tr>
            
        </table>



    </form>
</body>
</html>

