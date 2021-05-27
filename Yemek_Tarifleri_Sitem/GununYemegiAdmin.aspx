<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            background-color: #CCCCCC;
        }
        .auto-style7 {
            width: 30px;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style8 {
            width: 42px;
        }
        .auto-style9 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td><strong>YEMEK</strong> <strong>LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style9">
                            <a href='YemekDüzenle.aspx?Yemekid=<%# Eval("Yemekid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İconlar/seçç.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
