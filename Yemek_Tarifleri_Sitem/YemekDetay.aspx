<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: 30pt;
            color: #CCCCCC;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            height: 25px;
        }
        .auto-style9 {
            font-size: x-small;
        }
        .auto-style10 {
            background-color: #EEA4A4;
        }
    .auto-style11 {
        text-decoration: underline;
    }
    .auto-style12 {
        font-weight: bold;
        font-size: large;
        margin-left: 29px;
    }
    .auto-style13 {
        text-decoration: underline;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-&nbsp;
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="auto-style10">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"><strong><em>Ad Soyad: </em></strong></td>
                <td>
                    <asp:TextBox ID="txtadsoyad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong><em>Mail:</em></strong></td>
                <td>
                    <asp:TextBox ID="txtmail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong><em>Yorumunuz:</em></strong></td>
                <td>
                    <asp:TextBox ID="txtyorum" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td><strong>
                    <asp:Button ID="btnyorumyap" runat="server" CssClass="auto-style12" Height="40px" OnClick="Button1_Click" Text="Yorum Yap" Width="146px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
