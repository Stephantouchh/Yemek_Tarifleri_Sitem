<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            font-weight: bold;
            font-style: italic;
            text-decoration: underline;
            margin-left: 54px;
            background-color: #FFFF66;
        }
        .auto-style8 {
            text-align: right;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style5"><strong>Tarif Ad:</strong></td>
            <td>
                <asp:TextBox ID="txttarifad" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtmalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="txtyapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="253px" CssClass="auto-style10" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif Öneren:</strong></td>
            <td>
                <asp:TextBox ID="txttarifoneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Mail Adresi:</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="txtmailadresi" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td class="auto-style6"><strong><em>
                <asp:Button ID="btntarifoner" runat="server" BackColor="#FFFF99" CssClass="auto-style7" Height="40px" Text="Tarif Öner" Width="150px" OnClick="btntarifoner_Click" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
