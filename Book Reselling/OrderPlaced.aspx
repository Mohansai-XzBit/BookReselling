<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="OrderPlaced.aspx.cs" Inherits="OrderPlaced" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Hurray!!!!!Your Order Has succesfully Placed" CssClass="auto-style1" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Your Order will be delivered in next two days "></asp:Label>
    <br />
    <br />
</asp:Content>

