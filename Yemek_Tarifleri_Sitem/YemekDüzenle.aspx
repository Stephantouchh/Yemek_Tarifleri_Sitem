<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDüzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
        .auto-style4 {
        font-weight: bold;
        font-size: large;
        margin-left: 31px;
        background-color: #0099FF;
    }
    .auto-style5 {
        font-weight: bold;
        font-size: large;
        margin-left: 31px;
        background-color: #CC99FF;
    }
        .auto-style6 {
            text-align: right;
            height: 210px;
        }
        .auto-style7 {
            height: 210px;
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
            <td class="auto-style2"><strong>YEMEK AD:</strong></td>
            <td>
                <asp:TextBox ID="txtad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>MALZEMELER:</strong></td>
            <td>
                <asp:TextBox ID="txtmalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>TARİF:</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txttarif" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>YEMEK GÖRÜNTÜ:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="258px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>KATEGORİ:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="257px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnguncelle" runat="server" CssClass="auto-style4" Height="35px" OnClick="btnguncelle_Click" Text="Güncelle" Width="200px" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="35px" OnClick="Button1_Click" Text="Günün Yemeği Seç" Width="200px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
