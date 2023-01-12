<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="IstanbulDCWebPortal.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        Admin Page
    </title>
</head>
<body id="PageBody" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table" runat="server" HorizontalAlign="Center" Height="128px">
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server" HorizontalAlign="Center" ColumnSpan="5">
                        <asp:Label ID="LabelHeader" runat="server" Text="ADMIN PANEL" style="text-align: center" BorderStyle="Solid" BorderWidth="10px" BorderColor="#3399FF" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Button ID="ButtonListServer" runat="server" Text="List Server" OnClick="ButtonListServer_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="ButtonAddServer" runat="server" Text="Add Server" OnClick="ButtonAddServer_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="ButtonGetEmployeeInDept" runat="server" Text="Get Emp No" OnClick="ButtonGetEmployeeInDept_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="ButtonCheckCabin" runat="server" Text="Cabins" OnClick="CheckCabin_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="ButtonCustomerSpend" runat="server" Text="Customer Spends" OnClick="ButtonCustomerSpend_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div>
            <asp:Table ID="Tables" runat="server" HorizontalAlign="Center" BackColor="#CCCCCC">
                 <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:GridView ID="GridViewServerList" CssClass="Grid" runat="server">
                        </asp:GridView>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div>
            <asp:Table ID="AddServerTable" runat="server" HorizontalAlign="Center" BorderStyle="Inset" ForeColor="Black" Height="302px" Width="315px" BackColor="#FFCC66">
                <asp:TableRow runat="server">
                        <asp:TableCell runat="server" style="text-align: center">
                            <asp:Label ID="ServiceTagLabel" runat="server" Text="Service Tag"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell runat="server" style="text-align: center">
                            <asp:TextBox ID="ServiceTagText" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow runat="server">
                        <asp:TableCell runat="server" style="text-align: center">
                            <asp:Label ID="ModelLabel" runat="server" Text="Model"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell runat="server" style="text-align: center">
                           <asp:TextBox ID="ModelText" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow runat="server">
                        <asp:TableCell runat="server" style="text-align: center">
                            <asp:Label ID="CPULabel" runat="server" Text="CPU"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell runat="server" style="text-align: center">
                           <asp:TextBox ID="CPUText" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow runat="server">
                        <asp:TableCell runat="server" style="text-align: center">
                            <asp:Label ID="RAMLabel" runat="server" Text="RAM"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell runat="server" style="text-align: center">
                           <asp:TextBox ID="RAMText" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow runat="server">
                        <asp:TableCell runat="server" style="text-align: center">
                            <asp:Label ID="StorageLabel" runat="server" Text="Storage"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell runat="server" style="text-align: center">
                           <asp:TextBox ID="StorageText" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow runat="server">
                        <asp:TableCell runat="server" style="text-align: center">
                            <asp:Label ID="PriceLabel" runat="server" Text="Price"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell runat="server" style="text-align: center">
                           <asp:TextBox ID="PriceText" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow runat="server">
                        <asp:TableCell runat="server" style="text-align: center">
                            <asp:Label ID="CabinIDLabel" runat="server" Text="Cabin ID"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell runat="server" style="text-align: center">
                           <asp:TextBox ID="CabinIDText" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
            
            
            </asp:Table>
        </div >
        <div align="center" style="height: 16px; width: 1826px">

            </div>
        <div align="center">
            <asp:Button ID="AddServerButton" runat="server" Text="ADD" 
                BorderStyle="Inset" BorderColor="Black" Height="41px" Width="77px" OnClick="AddServerButton_Click" BackColor="#CC9900" Font-Bold="True"/>
            </div>
        <div style="height: 39px;position:relative; text-align:center">
            <asp:Label ID="AddServerStatuLabel" runat="server" Text=" "></asp:Label>
            </div>
    </form>
</body>
</html>
