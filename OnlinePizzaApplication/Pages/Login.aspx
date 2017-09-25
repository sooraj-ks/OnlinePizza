<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Reg.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlinePizzaApplication.Pages.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bodyimg">
        <center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Table ID="LoginTable" runat="server" Width="442px">
            <asp:TableRow>
                <asp:TableCell>Username: </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox CssClass="box" ID="Username" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Login" runat="server" ErrorMessage="UserName Required!" ControlToValidate="Username"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Password:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox CssClass="box" ID="Password" TextMode="Password" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Login" runat="server" ErrorMessage="Password Required!" ControlToValidate="Password"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                
            </asp:TableRow>
        </asp:Table>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text=" Remember me" />
            <br />
        <br />
        </center>
    </div>
    <div class="submit">
        <center> 
            <asp:Button CssClass="Button" ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
            <br /><br />
            <asp:Button CssClass="OtherLink" ID="Register" runat="server" Text="Click here to Register" OnClick="Register_Click"/>
            <br /><br />
            <asp:Label ID="Alert" runat="server" ForeColor="Red"></asp:Label>
        </center>
    </div>
</asp:Content>
