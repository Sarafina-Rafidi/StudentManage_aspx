<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aspx_crud_operation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:15px">

    </div>

    <table class="nav-justified">
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Student Info Management System"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Student Id:"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="White" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                <asp:Button ID="Get" runat="server" BackColor="#333333" Font-Size="Medium" ForeColor="White" OnClick="Get_Click" Text="Get" Width="100px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Student Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="White" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Los Angeles</asp:ListItem>
                    <asp:ListItem>New York</asp:ListItem>
                    <asp:ListItem>Seattle</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Sex:"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="180px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 35px"></td>
            <td style="height: 35px">
                <asp:Button ID="Insert" runat="server" BackColor="#333333" Font-Size="Medium" ForeColor="White" OnClick="Insert_Click" Text="Insert" Width="100px" />
                <asp:Button ID="Update" runat="server" BackColor="#333333" Font-Size="Medium" ForeColor="White" OnClick="Update_Click" Text="Update" Width="100px" />
                <asp:Button ID="Delete" runat="server" BackColor="#333333" Font-Size="Medium" ForeColor="White" OnClick="Delete_Click" Text="Delete" Width="100px" OnClientClick="return confirm('Are you sure to delete?');" />
                <asp:Button ID="Load" runat="server" BackColor="#333333" Font-Size="Medium" ForeColor="White" OnClick="Load_Click" Text="Load" Width="100px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" Width="1170px">
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>
