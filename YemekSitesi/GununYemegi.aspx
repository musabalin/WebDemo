<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-align: justify;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style10 {
            font-size: medium;
        }
        .auto-style11 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h1 class="auto-style7">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <p>
                            <strong><span class="auto-style4">Malzemeler:</span></strong>
                            <asp:Label ID="Label9" runat="server" style="font-size: large" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                       
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><strong><span class="auto-style4">Yapılışı:</span></strong><asp:Label ID="Label10" runat="server" style="font-size: large" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="206px" ImageUrl="~/Resimler/kofte.jpg" Width="363px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td><span class="auto-style11">Puan</span>:<asp:Label ID="Label11" runat="server" CssClass="auto-style11" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;<span class="auto-style10">EklenmeTarih</span>:<asp:Label ID="Label12" runat="server" CssClass="auto-style10" style="font-style: italic;" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
