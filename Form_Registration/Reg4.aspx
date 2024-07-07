<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg4.aspx.cs" Inherits="Reg4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Reg4</title>
    <link href="MyStyleSheet.css" type="text/css" rel="stylesheet" />
</head>
<body >
    
    <form id="form1" runat="server">
           <p>
               <strong><span><span class="style">Edit Your Profile</span>
                </span></strong>
               <asp:Label ID="username" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#006699"></asp:Label>
           </p>
                
            <table class="table" align="center" border="1">
                <tr class="row">
                    <td ><strong>First Name : </strong> </td>
                    <td>
                        <asp:TextBox ID="first_name" runat="server" Width="175" Height="30" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr class="row">
                    <td><strong>Middle Initial :</strong> </td>
                    <td>
                        <asp:TextBox ID="midle_initial" runat="server" Width="175" Height="30" Font-Size="Medium" ></asp:TextBox>
                    </td>
                </tr>
                <tr class="row">
                    <td><strong>Last Name :</strong> </td>
                    <td>
                        <asp:TextBox ID="last_name" runat="server" Width="175" Height="30" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr class="row">
                    <td><strong>Country :</strong> </td>
                    <td>
                        <asp:DropDownList ID="country" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCoutry" DataTextField="Name" DataValueField="Id" Width="175" Height="30" Font-Size="Medium" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCoutry" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT * FROM [Contries]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr class="row">
                    <td><strong>State :</strong> </td>
                    <td class="dropdown">
                        <asp:DropDownList ID="state" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceState" DataTextField="Name" DataValueField="Id" Width="175" Height="30" Font-Size="Medium">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceState" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT * FROM [Stat_Province] WHERE ([Contries_id] = @Contries_id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="country" Name="Contries_id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr class="row">
                    <td><strong>City :</strong> </td>
                    <td>
                        <asp:DropDownList ID="city" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCities" DataTextField="Name" DataValueField="Id" Width="175" Height="30" Font-Size="Medium">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCities" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT * FROM [Cities] WHERE ([Stat_Province_id] = @Stat_Province_id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="state" Name="Stat_Province_id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr class="row">
                    <td><strong>Comments :</strong> </td>
                    <td>
                        <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr class="row">
                    <td>
                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                    </td>
                    <td>
                            <asp:Button ID="Button1" runat="server"  Height="36px" Text="Edit" Width="180px" OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium"/>
                    </td>
                </tr>
                </table>

        </div>
        <table class="table" align="center" border="0">
            <tr>
                <td>
                    <asp:LinkButton ID="edit_password" runat="server" OnClick="edit_password_Click"><strong>Edit You&#39;re Password</strong> </asp:LinkButton>
                </td>
                <td></td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="NewPass" runat="server" Text= "New Password :" Font-Size="X-Large" Font-Bold="true" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="new_pass" runat="server"  Visible="False" Width="175" Height="30" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="RepeatPass" runat="server" Text="Repeat Password :" Font-Size="X-Large" Font-Bold="true" Visible="False" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="repeat_pass" runat="server" Visible="False" Width="175" Height="30" Font-Size="Medium" TextMode="Password" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="submit" runat="server"  OnClick="submit_Click" Text="OK" Visible="False" Width="68px" />
                    
                    <asp:Button ID="cancel" runat="server" OnClick="cancel_Click" Text="Cancel" Visible="False" Width="66px" />
                </td>
            </tr>
        </table>
           <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="X-Large">Log out</asp:LinkButton>
    </form>
</body>
</html>
