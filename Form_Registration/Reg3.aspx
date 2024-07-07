<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg3.aspx.cs" Inherits="Reg3" %>

<!DOCTYPE html>
<script runat="server">

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reg3</title>
    
    <link href="MyStyleSheet.css" type="text/css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server" method="post">
        <div>
            <h1 class="h1">
                Add / Edit / Delete DataBase</h1>
        </div>
        <table class="table" border="1" align="center">
            <tr class="row">
                <td rowspan="4"><span>Enter Username and GO.</span><br />
                    <span >Edit the information shown,</span><br  />
                    <span>then press the Edit Button
                    </span>
                    <br  />
                    <span>to update OR Delete.</span><br />
                </td>
                <td colspan="6" ><strong>Enter</strong> <strong>Username</strong>:
                    <asp:TextBox ID="search" runat="server" Width="188px" Height="35px" Font-Size="Large"></asp:TextBox>
                    <asp:Button ID="BtnSearch" runat="server" Text="GO" OnClick="BtnSearch_Click" Font-Bold="True" Font-Size="Medium" Height="35px" Width="40px" />
                    <br />
                </td>
                <td rowspan="2" >&nbsp;Users in<br />
                    Database</td>
            </tr>
            <tr class="row">
                <td><strong>First Name:</strong></td>
                <td colspan="2">
                    <asp:TextBox ID="first_name" runat="server" Height="28px" CssClass="TextBox" ReadOnly="True"></asp:TextBox>
                </td>
                <td colspan="2" ><strong>Zip:</strong> </td>
                <td>
                    <asp:TextBox ID="zip" runat="server" CssClass="TextBox" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr class="row">
                <td> <strong>Middle Initial:</strong> </td>
                <td colspan="2">
                    <asp:TextBox ID="middle_initial" runat="server" MaxLength="1" ReadOnly="True" Font-Size="Medium" Height="28px" Width="50px"></asp:TextBox>
                </td>
                <td colspan="2"><strong>E-Mail:</strong> </td>
                <td>
                    <asp:TextBox ID="email" runat="server" placeholder="Example@hotmail.com" CssClass="TextBox" ReadOnly="True"></asp:TextBox>
                </td>
                <td rowspan="6" >
                    <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Username] FROM [Users]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="10px" CellPadding="4" DataSourceID="SqlDataSourceUsers" ForeColor="Black" GridLines="None" Height="10px" PageSize="5">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField ApplyFormatInEditMode="True" DataField="Username" HeaderText="Username" SortExpression="Username" />
                        </Columns>
                        <EditRowStyle Font-Underline="False" VerticalAlign="Top" Wrap="False" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" Height="10px" VerticalAlign="Top" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" Height="10px" VerticalAlign="Top" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </td>
            </tr>
            <tr class="row">
                <td><strong>Last Name:</strong> </td>
                <td colspan="2">
                    <asp:TextBox ID="last_name" runat="server" CssClass="TextBox" ReadOnly="True"></asp:TextBox>
                </td>
                <td colspan="2"><strong>Username:</strong> </td>
                <td>
                    <asp:TextBox ID="username" runat="server" CssClass="TextBox" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr class="row">
                <td rowspan="4"><span >Fill The TextBoxes</span><br />
                    <span>to Add a new user,</span><br/>
                    <span>then press the</span><br />
                    <span>Add Button to ADD.</span></td>
                <td><strong>City:</strong> </td>
                <td colspan="2">
                    <asp:TextBox ID="city" runat="server" CssClass="TextBox" ReadOnly="True"></asp:TextBox>
                </td>
                <td colspan="2"><strong>Password:</strong> </td>
                <td>
                    <asp:TextBox ID="password" runat="server" CssClass="TextBox" TextMode="Password" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr class="row">
                <td><strong>State/Province:</strong> </td>
                <td colspan="2">
                    <asp:TextBox ID="state" runat="server" CssClass="TextBox" ReadOnly="True"></asp:TextBox>
                </td>
                <td colspan="2" rowspan="2"><strong>Comments:</strong> </td>
                <td rowspan="2">
                    <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" MaxLength="100" Font-Size="Medium" Height="76px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr class="row">
                <td><strong>Country:</strong> </td>
                <td colspan="2">
                    <asp:TextBox ID="contry" runat="server" CssClass="TextBox" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr class="row">
                <td colspan="2" class="Button">
                    <asp:Button ID="BtnAdd" runat="server" Text="Add" Width="70px" Height="45px" OnClick="BtnAdd_Click" Font-Bold="True" Font-Size="Medium" />
                    &nbsp;<asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Green"></asp:Label>
                </td>
                <td colspan="2" class="Button">
                    <asp:Button ID="BtnEdit" runat="server" Text="Edit" Width="70px" Height="45px" OnClick="BtnEdit_Click"  Font-Bold="True" Font-Size="Medium" />
                    <asp:Button ID="btnupdate" runat="server" Font-Bold="True" Font-Size="Medium" Height="45px" OnClick="Button1_Click" Text="Update" Visible="False" Width="70px" />
                </td>
                <td colspan="2" class="Button">
                    <asp:Button ID="BtnEdit0" runat="server" Text="Delete" Width="70px" Height="45px" OnClick="BtnEdit0_Click" Font-Bold="True" Font-Size="Medium" />
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="X-Large">Log out</asp:LinkButton>
    </form>
</body>
</html>
