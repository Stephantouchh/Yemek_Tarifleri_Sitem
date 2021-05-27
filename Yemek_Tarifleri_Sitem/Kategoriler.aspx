<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            background-color: #CCCCCC;
        }
    .auto-style3 {
        text-align: right;
    }
    .auto-style4 {
        font-size: large;
    }
        .auto-style5 {
            text-align: left;
            width: 246px;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style7 {
            width: 30px;
        }
        .auto-style8 {
            width: 42px;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: 12pt;
            margin-left: 28px;
        }
        .auto-style10 {
            text-align: right;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style3">
                           <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style3">
                          <a href="KategoriDüzenle.aspx?Kategoriid=<%# Eval("Kategoriid") %>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İconlar/Update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color:#CCCCCC; margin-top:15px;" >
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style6" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>KATEGORİ ADI:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>KATEGORİ İKON:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnekle" runat="server" CssClass="auto-style9" Text="EKLE" Width="126px" OnClick="btnekle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
