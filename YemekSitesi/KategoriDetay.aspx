<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekSitesi.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            color: #FFFF00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style4"><a href="YemekDetay.aspx?YemekID=<%#Eval("YemekID") %>" >
                    <asp:Label  ID="Label3" runat="server" style="font-weight:700; font-size:x-large;" Text='<%# Eval("YemekAd") %>' CssClass="auto-style5">  
                                  </asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td colspan="2"><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2"><strong>Yapılış</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>Puan:<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
                <td class="auto-style3">Tarih:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-bottom-style: inset; border-bottom-width: 1px">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
