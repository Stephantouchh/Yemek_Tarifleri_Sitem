<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yorumlar" %>

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

        .auto-style5 {
            text-align: left;
            width: 246px;
        }

        .auto-style4 {
            font-size: large;
        }

        .auto-style3 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" OnClick="Button1_Click1" />
                </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px" Text="-" Width="30px" OnClick="Button2_Click1" />
                </strong></td>
                <td><strong>ONAYLANAN</strong> <strong>YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style3">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İconlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style3">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İconlar/Update.png" Width="30px" />
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
                <td><strong>ONAYLANMAYAN</strong> <strong>YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style3">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İconlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style3">
                         <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İconlar/Update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
