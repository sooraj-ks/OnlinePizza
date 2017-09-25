<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Reg.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlinePizzaApplication.Pages.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Register</title>
    <link href="../Content/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="ContentPlace" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="width:400px; margin:auto;">
        <center>
            &nbsp;&nbsp;&nbsp;
            <asp:Table ID="RegisterTable" runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell>Name:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox CssClass="box" ID="InputName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Reg" runat="server" ErrorMessage="Name Required!" ControlToValidate="InputName"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Username:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox CssClass="box" ID="Username" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Reg" runat="server" ErrorMessage="UserName Required!" ControlToValidate="Username"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Password:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox CssClass="box" ID="Password" TextMode="Password" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Reg" runat="server" ErrorMessage="Password Required!" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Address:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox CssClass="box" ID="Address" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Reg" runat="server" ErrorMessage="Address Required!" ControlToValidate="Address"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>PhoneNumber:</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox CssClass="box" ID="PhoneNumber" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Reg" runat="server" ErrorMessage="Phone Number Required!" ControlToValidate="PhoneNumber"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </center>
        </div>
        <br />
        <div class="submit">
        <center>
            <asp:Button CssClass="Button" ID="RegButton" runat="server" Text="Register" OnClick="RegButton_Click" />
            <br /><br />
            <asp:Button CssClass="OtherLink" ID="Login" runat="server" Text="Click here to Login" OnClick="Login_Click" />
            <br /><br />
            <asp:Label ID="Alert" runat="server" ForeColor="Red"></asp:Label>
        </center>
        </div>
    </div>
</asp:Content>

