<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewOrders.aspx.cs" Inherits="ViewOrders" %>

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
          <td>Address</td>
          <td>Mobile Number</td>
          
          <td>View order details</td>
        </tr>
        </HeaderTemplate>
       <ItemTemplate>
         <tr>
           <td><%#Eval("id") %></td>
           <td><%# Eval("orderid") %></td>
           <td><%# Eval("address") %></td>
           <td><%# Eval("mobilenumber") %></td>
          
           <td><a href="ViewOrderDetails.aspx?id=<%# Eval("orderid") %>">View Order Details</a></td>
         </tr>
      
    </ItemTemplate>
        <FooterTemplate>
        </table>
          </FooterTemplate>
  </asp:Repeater>
    <br />
    <br />
</asp:Content>

