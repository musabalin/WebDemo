<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekSitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            font-size: x-small;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            font-weight: bold;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </h1>
    <asp:DataList ID="DataList2" runat="server" Width="476px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        -<asp:Label ID="Label7" runat="server" CssClass="auto-style3" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-width: medium">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div style="background-color:greenyellow">
        <h3 class="auto-style4"><strong>Yorum Yapma Paneli</strong></h3>
    </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"><strong>Ad Soyad:</strong></td>
                <td>
                   
                    <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="200px"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox  ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Yorumunuz:</strong></td>
                <td>
                   
                    <asp:TextBox ID="TextBox4" runat="server" Height="80px" Width="200px"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" />
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
</asp:Content>
