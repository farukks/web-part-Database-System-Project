<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerPanel.aspx.cs" Inherits="IstanbulDCWebPortal.CustomerPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body id="PageBody" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table" runat="server" HorizontalAlign="Center" Height="128px">
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server" HorizontalAlign="Center" ColumnSpan="6">
                        <asp:Label ID="Label1" runat="server" Text=" " Style="text-align: center" BorderStyle="Solid" BorderWidth="10px" BorderColor="#3399FF" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server" HorizontalAlign="Center" ColumnSpan="6">
                        <asp:Label ID="Label2" runat="server" Text=" " Style="text-align: center" BorderStyle="Solid" BorderWidth="10px" BorderColor="#3399FF" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <asp:Button ID="Button2" runat="server" Text="List Server" OnClick="Button2_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="ButtonOpenSearch" runat="server" Text="Search" OnClick="OpenSearch_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="Button3" runat="server" Text="My Servers" OnClick="Button3_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="Button4" runat="server" Text="Orders" OnClick="Button4_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="Button5" runat="server" Text="Total Expense" OnClick="Button5_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="Button7" runat="server" Text="Rent Server" OnClick="Button7_Click" BorderStyle="Inset" BackColor="#669999" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div>
            <asp:Table ID="SearchServer" runat="server" HorizontalAlign="Center" BorderStyle="Inset" ForeColor="Black" Height="302px" Width="315px" BackColor="#FFCC66">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Style="text-align: center">
                        <asp:Label ID="CPULabel" runat="server" Text="CPU"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Style="text-align: center">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Style="text-align: center">
                        <asp:Label ID="RAMLabel" runat="server" Text="RAM"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Style="text-align: center">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Style="text-align: center">
                        <asp:Label ID="StorageLabel" runat="server" Text="Storage"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Style="text-align: center">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Style="text-align: center">
                        <asp:Label ID="PriceLabel" runat="server" Text="Price"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Style="text-align: center">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>


            </asp:Table>
        </div>
        <div align="center" style="height: 16px; width: 1826px">
        </div>
        <div align="center">
            <asp:Button ID="Button1" runat="server" Text="Search"
                BorderStyle="Inset" BorderColor="Black" Height="41px" Width="77px" OnClick="Button1_Click" BackColor="#CC9900" Font-Bold="True" />
        </div>
            <div>
                <asp:Table ID="TableRent" runat="server" HorizontalAlign="Center" BackColor="#FFCC66" BorderStyle="Inset" Height="62px" Width="313px">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" Style="text-align: center">
                            <asp:Label ID="Label4" runat="server" Text="Service Tag"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell runat="server" Style="text-align: center">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <div align="center" style="height: 16px; width: 1826px">
            </div>
            <div align="center">
                <asp:Button ID="Button6" runat="server" Text="Rent"
                    BorderStyle="Inset" BorderColor="Black" Height="41px" Width="77px" OnClick="Button6_Click" BackColor="#CC9900" Font-Bold="True" />
            </div>
        <div style="text-align:center; height:36px; margin-top:15px">
            <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
        </div>
        <div style="height: 39px; position: center; text-align: center">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="171px" Width="209px" HorizontalAlign="Center">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
