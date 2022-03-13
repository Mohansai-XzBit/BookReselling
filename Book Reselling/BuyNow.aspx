<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="BuyNow.aspx.cs" Inherits="BuyNow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
            width: 441px;
        }
        .auto-style3 {
            width: 441px;
        }
        .auto-style4 {
            width: 22px;
        }
        .auto-style5 {
            width: 22px;
            font-size: large;
        }
        .auto-style6 {
            width: 22px;
            font-size: large;
            height: 29px;
        }
        .auto-style7 {
            width: 441px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <p>
        <br />
        <table class="nav-justified">
            <tr >
                <td class="auto-style6"><strong>Name</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="col-xs-offset-0" Height="21px" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Email ID</strong></td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Mobile No.</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Height="21px" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Address:</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Height="52px" TextMode="MultiLine" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>pin:</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Price:</strong></td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
           <tr>
                
                <td class="auto-style4">
                    <asp:Button ID="b1" runat="server" Text="Pay Now" Height="34px" OnClick="b1_Click" Width="132px" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orderdetail]"></asp:SqlDataSource>
                </td>
            </tr>

        </table>
    </p>
</asp:Content>

