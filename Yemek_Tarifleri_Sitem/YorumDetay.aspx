<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: large;
            margin-left: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>AD SOYAD:</strong></td>
            <td>
                <asp:TextBox ID="txtad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>MAİL ADRESİ:</strong></td>
            <td>
                <asp:TextBox ID="txtmail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>İÇERİK:</strong></td>
            <td>
                <asp:TextBox ID="txticerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>YEMEK:</strong></td>
            <td>
                <asp:TextBox ID="txtyemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnonayla" runat="server" CssClass="auto-style3" Height="40px" OnClick="btnonayla_Click" Text="Onayla" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
