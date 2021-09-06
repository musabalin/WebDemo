<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YemeklerAdmin.aspx.cs" Inherits="YemekSitesi.YemeklerAdmin" %>

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
        .auto-style11 {
            width: 97px;
            height: 26px;
        }
        .auto-style12 {
            width: 93px;
            height: 26px;
        }
        .auto-style13 {
            width: 97px;
            height: 22px;
        }
        .auto-style14 {
            width: 93px;
            height: 22px;
        }
        .auto-style15 {
            width: 93px;
            height: 22px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <span class="auto-style5">
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Yemek Listesi"></asp:Label>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style2">
                            <a href="YemeklerAdmin.aspx?YemekID=<%#Eval("YemekID") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete-.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style2">
                            <a href="YemekDuzenle.aspx?YemekID=<%#Eval("YemekID") %>">
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
                            <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Yemek Ekle"></asp:Label>
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
            <td class="auto-style11">
                <asp:Label ID="Label3" runat="server" Text="Yemek Adı:"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label6" runat="server" Text="Yemek Malzemeleri:"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server" Height="90px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label5" runat="server" Text="Yemek Tarifi:"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server" Height="90px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label7" runat="server" Text="Kategori ID:"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
