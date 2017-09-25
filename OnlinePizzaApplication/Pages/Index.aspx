<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Pizza.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="OnlinePizzaApplication.Pages.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<div class="bodyimg">
    <h1>Welcome to Pizza Place!</h1>
    <div class="container">
        <div class="row">
            <h3>Pizza Booking</h3>  
        </div>
        <br /><br />
        <div class="row divContent" >
            <div class="col-md-3 col-md-offset-2">
                    <label>Pizza type</label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList ID="PizzaNameDropDown" Height="30px" runat="server" DataSourceID="SqlDataSource1" DataTextField="PizzaName" AutoPostBack="true" DataValueField="PizzaName" OnSelectedIndexChanged="UpdateFields">
                    <asp:ListItem Text="Select Pizza" Value=""></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBConnectionString %>" SelectCommand="SELECT [PizzaName] FROM [PizzaDetails]"></asp:SqlDataSource>
            </div>
            <div class="col-md-3">
                <label><u>Description</u></label><br />
            </div>
        </div>
        <div class="row divContent">
            <div class="col-md-3 col-md-offset-2">
                <label>Amount</label>
            </div>
            <div class="col-md-3">
                <asp:Label id="price" runat="server"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:Label id="desc" CssClass="box" runat="server"><br /></asp:Label>
            </div>
        </div>
         <br /><br />
        <div class="row divContent">
            <div class="col-md-3 col-md-offset-2">
                <label>Number of Pizza</label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" CssClass="box" ID="NumofPizzas" TextMode="Number"></asp:TextBox>
            </div>
        </div>
        <br /><br />
        <div class="row">
            <asp:Button ID="AddToCart" CssClass="Button" Text="Add to Cart" runat="server" OnClick="AddToCart_Click"/>
        </div>

    </div>
</div>
</center>
</asp:Content>
