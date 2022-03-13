<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 46%;
            height: 91px;
            background-color: #3399FF;
        }
        .auto-style3 {
            width: 56%;
            height: 124px;
            background-color: #3399FF;
        }
        .auto-style4 {
            width: 158px;
        }
        .auto-style5 {
            width: 158px;
            height: 68px;
        }
        .auto-style6 {
            height: 68px;
        }
        .auto-style8 {
            width: 123px;
            color: #000000;
        }
        .auto-style9 {
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            background-color: #0099FF;
        }
        .auto-style11 {
            color: #FFCC00;
        }
        .auto-style12 {
            margin-right: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
  
    <br />
    <asp:Label ID="l1" runat="server" Text="Place Order" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#003300" CssClass="auto-style11"></asp:Label>
  
    <br />
    <br />
  
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">Order ID</td>
            <td><strong>
                <asp:Label ID="Label1" runat="server" CssClass="contact-info"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8">Order Date</td>
            <td><strong>
                <asp:Label ID="Label2" runat="server" CssClass="contact-info"></asp:Label>
                </strong></td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="214px" ShowFooter="True" Width="682px" CssClass="auto-style12">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No" />
            <asp:BoundField DataField="productid" HeaderText="Product Id" />
            <asp:BoundField DataField="bookname" HeaderText="Book Name" />
            <asp:ImageField DataImageUrlField="productimage"  HeaderText="Product Image">
            </asp:ImageField>
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" Height="50px" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <br />
    <table border="1" class="auto-style3">
      <tr>
            <td class="auto-style4"><span class="auto-style9"><strong><span class="auto-style10">Enter Name</span></strong></span>:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="329px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><span class="auto-style9"><strong><span class="auto-style10">Type Your Address</span></strong></span>:</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="63px" TextMode="MultiLine" Width="333px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><span class="auto-style9"><strong><span class="auto-style10">Enter Mobile</span></strong></span>:</td>
            <td>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="329px"></asp:TextBox>
            </td>
        </tr>
      <tr>
        <td class="auto-style4"><span class="auto-style9"><strong><span class="auto-style10">Price</span></strong></span>:</td>
        <td>
          <asp:Label ID="Label3" runat="server"  ></asp:Label>
        </td>
      </tr>
    </table>
    <asp:Label ID="Label4" runat="server"></asp:Label>
    <br />
  <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order" />
  
</asp:Content>

