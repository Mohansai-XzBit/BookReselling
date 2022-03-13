<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewOrderDetails.aspx.cs" Inherits="ViewOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <br />
  <asp:Repeater ID="r1" runat="server">
    <HeaderTemplate>
      <table>
        <tr style="background-color:Gray; color:white">
          <td>ID</td>
          <td>Order ID</td>
          <td>S.No</td>
          <td>Product id</td>
          <td>Bookname</td>
          <td>Price</td>
          <td>Date of order</td>
         
        </tr>
        </HeaderTemplate>
       <ItemTemplate>
         <tr>
           <td><%#Eval("id") %></td>
           <td><%# Eval("orderid") %></td>
           <td><%# Eval("sno") %></td>
           <td><%# Eval("productid") %></td>
           <td><%# Eval("bookname") %></td>
           <td><%# Eval("price") %></td>
           <td><%# Eval("dateoforder") %></td>
           
         </tr>
      
    </ItemTemplate>
        <FooterTemplate>
        </table>
          </FooterTemplate>
  </asp:Repeater>
    <br />
    <asp:Label ID="l1" runat="server"></asp:Label>
</asp:Content>

