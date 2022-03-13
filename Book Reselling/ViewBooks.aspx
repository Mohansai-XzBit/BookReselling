<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewBooks.aspx.cs" Inherits="ViewBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 38%;
            height: 31px;
        }
        .auto-style4 {
            width: 264px;
        }
        .auto-style7 {
            color: #990000;
            font-size: large;
        }
        .auto-style8 {
            color: #660066;
            font-size: medium;
        }
        .auto-style9 {
            margin-left: 62;
        }
        .auto-style10 {
            margin-left: 23;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            background-color: #0099FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="contact-info"><strong>&nbsp;<span class="auto-style11">Books in your Cart</span>:</strong></span><strong><asp:Label ID="Label4" runat="server" Text="Label" CssClass="auto-style7"></asp:Label>
    </strong>&nbsp;&nbsp;
    <strong><em>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx" CssClass="auto-style8">Show Cart</asp:HyperLink>
    </em></strong>
    <br />
    <table class="auto-style2">
        <tr>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="23px"  Width="405px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Height="26px" OnClick="Button2_Click" Text="Search" Width="122px" CssClass="auto-style10" />
            </td>
        </tr>
    </table>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton1_Click">View All Products</asp:LinkButton>
    <br />
<asp:DataList ID="DataList1" runat="server" BackColor="#0099FF" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" CellSpacing="2" CssClass="auto-style12" ForeColor="Black" >
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="White" />
    <ItemTemplate>
        <table border="1" class="nav-justified">
            <tr>
                <td class="text-center">Product ID:<asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("BookName") %>'></asp:Label>
                </td>
            </tr>
          <tr>
                <td class="text-center">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("AuthorName") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="text-center">Rs.<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Button ID="Button1" runat="server" Text="Add to Cart" CommandName="addtocart" CommandArgument='<%#Eval("productid")%>' />
                </td>
            </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddBook]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddBook] WHERE ([BookName] LIKE '%' + @BookName + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="BookName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

