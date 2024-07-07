<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg2.aspx.cs" Inherits="Reg2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reg2</title>
    <link href="MyStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="h2">Registration Form</h1>

        <table align="center">
            <tr>
                <td></td>
                <td>First Name:</td>
                <td>
                    <asp:TextBox ID="first_name" runat="server" Width="200px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="first_name" ErrorMessage="Please enter your First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Middle Initial:</td>
                <td>
                    <asp:TextBox ID="middle_initial" runat="server" Width="50px" Height="20px" MaxLength="1" TabIndex="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="middle_initial" ErrorMessage="Please enter Middle Initial" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Last Name:</td>
                <td>
                    <asp:TextBox ID="last_name" runat="server" Width="180px" Height="20px" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="last_name" ErrorMessage="Please enter your Last Name" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Country:</td>
                <td>
                    <asp:DropDownList ID="countries" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCountries" DataTextField="Name" DataValueField="Id" Height="22px" Width="185px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceCountries" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" DeleteCommand="DELETE FROM [Contries] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contries] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [Contries]" UpdateCommand="UPDATE [Contries] SET [Name] = @Name WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>State/Province:</td>
                <td>
                    <asp:DropDownList ID="state" runat="server" Height="22px" Width="185px" TabIndex="4" AutoPostBack="True" DataSourceID="SqlDataSourceStates" DataTextField="Name" DataValueField="Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceStates" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" DeleteCommand="DELETE FROM [Stat_Province] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Stat_Province] ([Name], [Contries_id]) VALUES (@Name, @Contries_id)" SelectCommand="SELECT * FROM [Stat_Province] WHERE ([Contries_id] = @Contries_id)" UpdateCommand="UPDATE [Stat_Province] SET [Name] = @Name, [Contries_id] = @Contries_id WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Contries_id" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="countries" Name="Contries_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Contries_id" Type="Int32" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>City:</td>
                <td>
                    <asp:DropDownList ID="cities" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCities" DataTextField="Name" DataValueField="Id" Height="22px" Width="185px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceCities" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" DeleteCommand="DELETE FROM [Cities] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cities] ([Name], [Stat_Province_id]) VALUES (@Name, @Stat_Province_id)" SelectCommand="SELECT * FROM [Cities] WHERE ([Stat_Province_id] = @Stat_Province_id)" UpdateCommand="UPDATE [Cities] SET [Name] = @Name, [Stat_Province_id] = @Stat_Province_id WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Stat_Province_id" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="state" Name="Stat_Province_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Stat_Province_id" Type="Int32" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Zip:</td>
                <td>
                    <asp:TextBox ID="zip" runat="server" Width="180px" Height="20px" OnTextChanged="zib_TextChanged" TabIndex="6"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="zip" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="zip" ErrorMessage="Rang should 5 t 10 " Font-Size="Medium" ForeColor="Red"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>E-Mail:</td>
                <td>
                    <asp:TextBox ID="email" runat="server" Width="180px" Height="20px" TabIndex="7"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="E-mail must be like this example@example.com" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Username:</td>
                <td>
                    <asp:TextBox ID="username" runat="server" Width="180px" Height="20px" TabIndex="8"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="username" ErrorMessage="Please enter your Username" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" Width="180px" Height="20px" TabIndex="9"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="password" ErrorMessage="Please enter a Password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Repeat Password:</td>
                <td>
                    <asp:TextBox ID="repeat_pawssord" runat="server" TextMode="Password" Width="180px" Height="20px" TabIndex="10"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="repeat_pawssord" ErrorMessage="Passwords didn't matched" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Comments:</td>
                <td>
                    <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" TabIndex="11"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="CustomValidator"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:CheckBox ID="i_agree" runat="server" Checked="True" Font-Size="Medium" Text="I agree to the site terms." ValidateRequestMode="Enabled" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Green"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="BtnRegister" runat="server" TabIndex="12" Text="Submit" Width="75px" OnClick="Button1_Click" Font-Size="Medium" Height="29px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" style="font-size: medium" type="reset" value="Reset" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
