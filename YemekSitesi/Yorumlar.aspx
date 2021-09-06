<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekSitesi.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 190px;
            height: 22px;
            text-align: left;
        }

        .auto-style4 {
            font-size: large;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style11">
        <strong>
        <asp:Label ID="Label3" runat="server" Text="ONAYLANMAYAN YORUMLAR"></asp:Label>
        </strong>
    </p>
    <p class="auto-style11">
        <br />
        <asp:DataList ID="DataList1" runat="server" Width="478px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style2">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete-.png" Width="30px" />
                        </td>
                        <td class="auto-style2">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <br />
    <p class="auto-style11">
        <strong>
        <asp:Label ID="Label2" runat="server" Text="ONAYLANAN YORUMLAR"></asp:Label>
        </strong>
    </p>
    <p>
        <br />
        <asp:DataList ID="DataList2" runat="server" Width="478px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style2">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete-.png" Width="30px" />
                        </td>
                        <td class="auto-style2">
                          <a href="YorumDetay.aspx?YorumID=<%#Eval("YorumID") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <br />
</asp:Content>
