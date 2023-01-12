<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="IstanbulDCWebPortal.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Homepage</title>
</head>
<body style="background-color: cadetblue">
    <form id="form1" runat="server">
        <div>
            <table style="width: 354px;margin:auto;">
                <tr>
                    <td style="border: thin; align-content: center">
                        &nbsp;
                        <img src="logo.png" style="width: 340px; height: 75px; display: block; margin-top: 0px;" />
                    </td> 
                    <td>
                        <div style="margin-bottom: 10px; position: relative; font-size: large; font-weight: bold; text-align: center">
                            <asp:Button ID="LoginSignIn" runat="server" OnClick="LoadSignInPage" Text="Sign In" />
                        </div>
                        <div style="margin: auto; position: relative; font-size: large; font-weight: bold; text-align: center">
                            <asp:Button ID="LoginSignUp" runat="server" OnClick="LoadCustomerSignUp" Text="Sign Up" />
                        </div>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p style="font-size: large; font-weight: bold;color:black">
                            İNTER NET BİLGİSAYAR TURİZM VE TİC. was established in 1999 by Engin Rençber
                            to produce individual and corporate web hosting, server rental and server hosting services. 
                            It made its first data center investment in 2012 and was authorized as a Location Provider 
                            by the Telecommunications Authority in the same year. By changing its title in 2017, 
                            ISTANBULDC DATA CENTER LTD. STI. Continues to rise in the data center sector and to 
                            increase its investment power. Adopting the principle of reliable and interrupted service 
                            with the slogan of Maximum Uptime, Istanbul DC completed its third generation data center 
                            investment in MetroCity AVM with a total area of 250 m^2 and a capacity of 5000 servers in 2015. 
                            It provides services to its customers 24/7 with 100% physical security, uninterrupted internet access, 
                            the most advanced technology in energy and air conditioning, and experienced technical team.

                        </p>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
