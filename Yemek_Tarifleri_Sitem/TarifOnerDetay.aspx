<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style13 {
            text-align: right;
        }
    .auto-style12 {
        font-weight: bold;
        font-size: large;
        margin-left: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Tarif&nbsp; Ad: </strong></td>
                <td>
                    <asp:TextBox ID="txttarifad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Tarif Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="txtmalzemeler" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Yapılış:</strong></td>
                <td>
                    <asp:TextBox ID="txtyapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Tarif Resim:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="206px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Tarif Öneren:</strong></td>
                <td>
                    <asp:TextBox ID="txtoneren" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Öneren Mail:</strong></td>
                <td>
                    <asp:TextBox ID="txtonerenmail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="208px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnonayla0" runat="server" CssClass="auto-style12" Height="40px" OnClick="btnonayla_Click" Text="Onayla" Width="146px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
