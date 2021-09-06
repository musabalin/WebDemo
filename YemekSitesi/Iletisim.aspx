<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekSitesi.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style8">
            <h2><em>MESAJ PANELİ</em></h2>
        </td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style10"><strong>Ad Soyad:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Başlık:</strong></td>
        <td class="active">
            <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mail Adres:</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>İçerik:</strong></td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox4" runat="server" Height="60px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style5"><strong>
            <asp:Button ID="Button1" runat="server" Text="Gönder" Width="128px" CssClass="button" OnClick="Button1_Click" />
            </strong></td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
</table>
</asp:Content>
