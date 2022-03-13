<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SellBook.aspx.cs" Inherits="SellBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #C0C0C0;
        }
        .auto-style2 {
            width: 157px;
            height: 76px;
        }
        .auto-style3 {
            width: 924px;
            height: 76px;
        }
        .auto-style4 {
            width: 157px;
            height: 33px;
        }
        .auto-style5 {
            width: 924px;
            height: 33px;
        }
        .auto-style6 {
            width: 157px;
            height: 37px;
        }
        .auto-style7 {
            width: 924px;
            height: 37px;
        }
        .auto-style8 {
            width: 157px;
            height: 38px;
        }
        .auto-style9 {
            width: 924px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <asp:Label ID="l1" runat="server" Text="Sell Book Here" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    <table border="1" class="auto-style1">
        <tr>
            <td class="auto-style4">Book&nbsp; Id:</td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Book Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" Width="174px"></asp:TextBox>
            </td>
        </tr>
      <tr>
            <td class="auto-style6">Author Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server" Width="174px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Price:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Upload Book image:</td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="274px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" BackColor="#000066" Height="29px" Text="Save Book" Width="96px" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewBooks.aspx">View All Products</asp:HyperLink>
            </td>
        </tr>
    </table>

</asp:Content>

