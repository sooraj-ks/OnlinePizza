<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Pizza.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="OnlinePizzaApplication.Pages.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bodyimg">
        <center>
        <div>
        <h1>Confirm Booking</h1>
            <asp:Label ID="EmptyCart" runat="server"></asp:Label>
            <br /><br />
        <asp:GridView ID="GridView1" runat="server" RowStyle-HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="PizzaID" HeaderText="PizzaID" InsertVisible="False" ReadOnly="True" SortExpression="PizzaID" />
                <asp:BoundField DataField="PizzaName" HeaderText="PizzaName" SortExpression="PizzaName" />
                <asp:BoundField DataField="NumberOfPizza" HeaderText="NumberOfPizza" SortExpression="NumberOfPizza" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="True" ReadOnly="True" SortExpression="OrderID" />
                <asp:CommandField AccessibleHeaderText="Click to Delete" ShowDeleteButton="True" />
            </Columns>        
        <RowStyle HorizontalAlign="Center"></RowStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBConnectionString2 %>" 
            DeleteCommand="DELETE FROM PIZZASELECTED WHERE ORDERID=@OrderID" 
            SelectCommand="SELECT PizzaDetails.PizzaID, PizzaDetails.PizzaName, PizzaSelected.NumberOfPizza, PizzaSelected.Amount, PizzaSelected.OrderID FROM PizzaDetails INNER JOIN PizzaSelected ON PizzaDetails.PizzaID = PizzaSelected.PizzaID INNER JOIN UserDetail ON PizzaSelected.UserName = UserDetail.Username WHERE (UserDetail.UserStatus = 'Active')">
            <DeleteParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
            </DeleteParameters>

        </asp:SqlDataSource>        
        <br /><br />
            <asp:Button CssClass="Button" ID="AddMore" Text="Add More" runat="server" OnClick="AddMore_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button CssClass="Button" ID="ConfirmBooking" Text="ConfirmBooking" runat="server" OnClick="ConfirmBooking_Click"/> 
        </div>
        <br /><br />
        <h3>Total Amount:</h3>
        <asp:Label Font-Size="Large" ID="TotalAmount" runat="server"></asp:Label>
    </center>
    </div>
</asp:Content>
