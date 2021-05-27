<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        text-align: center;
    }
    .auto-style6 {
        font-size: x-large;
    }
    .auto-style7 {
        text-decoration: underline;
    }
    .auto-style9 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList3" runat="server">
    <ItemTemplate>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5"><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td><strong><span class="auto-style7"><em>Malzemeler:</em></span> </strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong><em><span class="auto-style7">Tarif:</span></em><span>&nbsp; </span></strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image3" runat="server" Height="233px" ImageUrl='<%# Eval("YemekResim") %>' Width="331px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style4">
                        <tr>
                            <td><strong><span class="auto-style7"><em>Puan:</em></span> </strong><em>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                &nbsp;</em></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td><em><span class="auto-style7"><strong>Eklenme </strong></span><strong><span class="auto-style7">Tarihi:</span><span>&nbsp; </span></strong>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </em></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
