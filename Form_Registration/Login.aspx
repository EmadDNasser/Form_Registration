<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="MyStyleSheet.css" type="text/css" rel="stylesheet" />
</head>
<body class="body">

    <form id="form1" runat="server">
        <div>
            <table class="table log" align="center" border="1">

                <tr>
                    <td rowspan="4">
                        <span>Please Login .<br />
                        OR<br />
                        </span>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign UP</asp:LinkButton>
                        </td>
                    <td colspan="2">
                        <img src="SVU.JPG" height="250" width="310" />
                    </td>
                </tr>
                <tr>
                    <td><strong>Username : </strong></td>
                    <td>
                        <asp:TextBox ID="Username" runat="server" Height="25px" Width="180px" Font-Size="Large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><strong>Password :</strong></td>
                    <td>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" Height="25px" Width="180px" Font-Size="Large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="Button">
                        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Login" Width="80px" Font-Size="Large" Font-Bold="true" />
                        <asp:Button ID="Button2" runat="server" Height="40px" Text="Cancel" Width="80px" Font-Bold="true" Font-Size="Large" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
