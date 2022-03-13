<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
     <br />
  <asp:Repeater ID="r1" runat="server">
    <HeaderTemplate>
      <table>
        <tr style="background-color:Gray; color:white;height:50px">
          <td>ID</td>
          <td>Name</td>
          <td>Email</td>
          <td>Mobile No</td>
          <td>Password</td>
          <td>Remove items</td>
      
         
        </tr>
        </HeaderTemplate>
       <ItemTemplate>
         <tr style="width:150px">
           <td><%#Eval("Id") %></td>
           <td><%# Eval("name") %></td>
           <td><%# Eval("email") %></td>
           <td><%# Eval("mobile") %></td>
           <td><%# Eval("password") %></td>
           <td>
           <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete">Delete</asp:LinkButton>
           </td>
         </tr>
      
    </ItemTemplate>
        <FooterTemplate>
        </table>
          </FooterTemplate>
  </asp:Repeater>
  
    <br />
    <asp:Label ID="l1" runat="server"></asp:Label>
</asp:Content>

