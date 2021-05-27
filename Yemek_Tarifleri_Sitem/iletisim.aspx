<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style7 {
        text-decoration: underline;
        text-align: right;
    }
    .auto-style8 {
        text-align: right;
    }
    .auto-style9 {
        font-size: x-large;
    }
        .auto-style11 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            height: 50px;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style9" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><em><strong>Ad Soyad:</strong></em></td>
        <td>
            <asp:TextBox ID="txtadsoyad" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><em><strong>Mail Adresiniz:</strong></em></td>
        <td>
            <asp:TextBox ID="txtmail" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><em><strong>Konu:</strong></em></td>
        <td>
            <asp:TextBox ID="txtkonu" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong><em>Mesaj:</em></strong></td>
        <td>
            <asp:TextBox ID="txtmesaj" runat="server" Height="150px" Width="200px" CssClass="tb5" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="btngonder" runat="server" CssClass="auto-style11" Text="Gönder" Width="208px" Height="40px" OnClick="btngonder_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
