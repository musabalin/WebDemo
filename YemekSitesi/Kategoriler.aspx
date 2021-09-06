<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekSitesi.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }

        .auto-style3 {
            width: 304px;
        }

        .auto-style4 {
            font-size: large;
        }

        .auto-style5 {
            font-size: xx-large;
        }

        .auto-style6 {
            width: 476px;
        }

        .auto-style8 {
            width: 93px;
        }

        .auto-style9 {
            width: 97px;
        }

        .auto-style10 {
            width: 190px;
            height: 22px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <span class="auto-style5">
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Kategori Listesi"></asp:Label>
                    </td>
                </tr>
            </table>
        </span>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="478px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style2">
                            <a href="Kategoriler.aspx?KategoriID=<%#Eval("KategoriId") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete-.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style2">
                            <a href="KategoriDuzenle.aspx?KategoriID=<%#Eval("KategoriId") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <span class="auto-style5">
            <table class="auto-style6">
                <tr>
                    <td>
                        <span class="auto-style5">
                            <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Kategori Ekle"></asp:Label>
                        </span>
                    </td>
                </tr>
            </table>
        </span>
    </asp:Panel>
    <table class="auto-style6">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Kategori Ad:"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Kategori İkon:</td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Ekle" Width="99px" />
            </td>
        </tr>
    </table>

</asp:Content>
