<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekOner.aspx.cs" Inherits="YemekSitesi.YemekOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><strong>Tarif Adı:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="197px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="198px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Yapılış:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Adınız:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifKisiAdi" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Mail Adres:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifMailAdi" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Resim</strong></td>
        <td>
            <asp:FileUpload ID="FileUpTarif" runat="server" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnTarif" runat="server" BackColor="Yellow" Text="Gönder" Width="150px" OnClick="BtnTarif_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="2"></td>
    </tr>
</table>
</asp:Content>
