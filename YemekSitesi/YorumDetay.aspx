<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekSitesi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            background-color: #4CAF50; /* Green */;
            border: solid #4CAF50;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 10px;
            font-weight: bold;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            height: 22px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Mail:</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="87px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Onayla" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
