<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }

        .auto-style5 {
            font-size: x-large;
        }

        .auto-style6 {
            text-align: center;
            background-color: #CCCCCC;
        }

        .auto-style7 {
            text-decoration: underline;
        }

        .auto-style9 {
            text-decoration: none;
        }

        .auto-style10 {
            height: 23px;
        }

        .auto-style11 {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style6"><strong><em>


                        <a href="YemekDetay.aspx?yemekid=<%# Eval("yemekid") %>">
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                    </em></strong></td>


                </tr>
                <tr>
                    <td class="auto-style9"><span class="auto-style7"><strong><em>M<span>alzemeler:</span></em></strong></span>&nbsp;
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        <table class="auto-style4">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style10"><strong><em><span class="auto-style7">Yemek Tarifi:</span></em></strong><span>&nbsp;&nbsp; </span>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style4">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td><em><strong><span class="auto-style7">Eklenme Tarihi:</span></strong></em><span>&nbsp; </span>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; -&nbsp;&nbsp;&nbsp;<strong><em>&nbsp;&nbsp; </em></strong><em><strong>&nbsp;<span class="auto-style7">Puan:</span> </strong></em>&nbsp;<strong>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            <em>&nbsp;</em></strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
