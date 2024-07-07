<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="MyStyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body class="body" >
    <form id="form1" runat="server">
    <div>
        <h1 class="h1">
            Welcome
        <asp:Label ID="username" runat="server"></asp:Label>
        </h1>
        
    </div>
        <p class="auto-style1">
        <asp:LinkButton ID="reg1" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="53px" Width="100px" OnClick="LinkButton1_Click">Reg1</asp:LinkButton>
        </p>
        <p class="auto-style1">
        <asp:LinkButton ID="reg2" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="53px" Width="100px" OnClick="LinkButton2_click">Reg2</asp:LinkButton>
        </p>
        <p class="auto-style1">
        <asp:LinkButton ID="reg3" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="53px" Width="100px" OnClick="LinkButton3_click">Reg3</asp:LinkButton>
        </p>
         <p class="auto-style1">
        <asp:LinkButton ID="reg4" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="53px" Width="100px" OnClick="LinkButton4_click">Reg4</asp:LinkButton>
        </p>
         <p class="auto-style1">
        <asp:LinkButton ID="cityx" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="53px" Width="100px" OnClick="LinkButton5_click">CityX</asp:LinkButton>
        </p>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" Font-Size="X-Large">Log out</asp:LinkButton>
    </form>
    <p></p>
</body>
</html>
