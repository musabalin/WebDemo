<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        text-align: justify;
    }
    .auto-style4 {
        margin-left: 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style4">
    <asp:Label ID="Label4" runat="server" Text="HAKKIMIZDA"></asp:Label>
</h2>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <em>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </em>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
