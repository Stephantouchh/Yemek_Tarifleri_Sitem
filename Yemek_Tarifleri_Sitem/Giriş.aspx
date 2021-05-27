<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetici.Master" AutoEventWireup="true" CodeBehind="Giriş.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Giriş" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>KULLANICI ADI:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>ŞİFRE:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Giriş Yap" Width="138px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
