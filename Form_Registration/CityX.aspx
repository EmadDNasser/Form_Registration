<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CityX.aspx.cs" Inherits="CityX" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CityX</title>
    <link href="MyStyleSheet.css" type="text/css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server">
        <h1 class="h2">Add Countries / States / Cities</h1>
    <div>
        <table class="table" align="center" border="1">
            <tr>
                <td> <strong>Name Of Country :</strong>
            <asp:TextBox ID="country" runat="server"  Width="160px" Height="30px" Font-Size="Medium" AutoPostBack="True"></asp:TextBox>
        &nbsp;<asp:Button ID="Button1" runat="server"  Text="Insert" Width="60px" Height="30px" Font-Size="Medium" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </div>
        <br />
        <table class="table" align="center" border="1">
            <tr>
                <td><strong>Please
            Choose A Country<br />
                    To Insert A New State:</strong></td>
                <td><asp:DropDownList ID="DropDownListCountry" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCountry" DataTextField="Name" DataValueField="Id" Height="30px" Width="160px" Font-Size="Medium" OnSelectedIndexChanged="DropDownListCountry_SelectedIndexChanged">
            </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><strong>Name Of State :</strong> </td>
                <td><asp:TextBox ID="State" runat="server" Width="160px" Height="30px" Font-Size="Medium" AutoPostBack="True"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="Insert" Width="60px" Height="30px" Font-Size="Medium" OnClick="Button2_Click" />
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table align="center" class="table" border="1">
            <tr>
                <td><strong>Choose The State <br />
                    To Insert A New City :</strong></td>
                <td>
            <asp:DropDownList ID="DropDownListState" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="Name" Height="30px" Width="160px" Font-Size="Medium">
            </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><strong>Name Of City :</strong> </td>
                <td> <asp:TextBox ID="city" runat="server" Height="30px" Width="160px" Font-Size="Medium" AutoPostBack="True"></asp:TextBox>
                &nbsp;<asp:Button ID="Button3" runat="server" Text="Insert" Width="60px" Height="30px" Font-Size="Medium" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
            <asp:SqlDataSource ID="SqlDataSourceCountry" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT * FROM [Contries]"></asp:SqlDataSource>
    </form>
</body>
</html>
