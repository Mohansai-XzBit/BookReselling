<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="MyBooks.aspx.cs" Inherits="MyBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
        height: 38px;
        background-color: #99CCFF;
    }
    .auto-style2 {
        text-align: center;
        height: 24px;
        background-color: #99CCFF;
    }
    .auto-style3 {
        text-align: center;
        background-color: #99CCFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <asp:Label ID="l1" runat="server" Text="My Books" Font-Bold="True" Font-Size="XX-Large" Height="37px" Width="259px"></asp:Label>
    <br />
    Books in your Cart:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">Show Cart</asp:HyperLink>
<asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" RepeatColumns="4" RepeatDirection="Horizontal" >
    <AlternatingItemStyle BackColor="Gainsboro" />
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
    <ItemTemplate>
        <table border="1" class="nav-justified">
            <tr>
                <td class="auto-style2">Product ID:<asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("BookName") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Rs.<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Add to Cart" CommandName="addtocart" CommandArgument='<%#Eval("productid")%>' />
                </td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddBook]"></asp:SqlDataSource>
</asp:Content>

