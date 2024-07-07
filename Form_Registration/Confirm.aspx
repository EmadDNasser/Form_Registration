<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="Confirm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirm</title>
    <link href="MyStyleSheet.css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <h3><span class="auto-style3">We have sent you </span><span class="auto-style2">The Username and The Password and The Confirmation Code</span>.<br class="auto-style3" />
                <span class="auto-style3">Please check your mail inbox and fill the text boxes below:</span><br />
            </h3>
        </div>
        <table align="center" class="table" border="1">
            <tr>
                <td><strong>Username :</strong> </td>
                <td>
                    <asp:TextBox ID="username" runat="server" Height="25px" Width="200px" Font-Size="Medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Password :</strong> </td>
                <td>

                    <asp:TextBox ID="pass" TextMode="Password" runat="server" Height="25px" Width="200px" Font-Size="Medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Confirmation Number :</strong>
                </td>
                <td>
                    <asp:TextBox ID="confirm_num" runat="server" Height="25px" Width="200px" Font-Size="Medium"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label1" runat="server"></asp:Label>

                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Confirm" Width="87px" Font-Bold="True" Font-Size="Large" />

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
