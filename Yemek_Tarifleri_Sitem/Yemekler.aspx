<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yemekler" %>


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
            font-size: x-large;
            margin-left: 49px;
        }
        .auto-style10 {
            text-align: right;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
    .auto-style12 {
        height: 23px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
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
                        <td class="auto-style3">
                           <a href="Yemekler.aspx?Yemekid=<%# Eval("Yemekid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style3">
                          <a href="YemekDüzenle.aspx?Yemekid=<%# Eval("Yemekid") %>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İconlar/Update.png" Width="30px" /></a>
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style6" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td><strong>YEMEK</strong> <strong>EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>YEMEK</strong> <strong>ADI:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtad" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="txtmalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>YEMEK TARİFİ:</strong></td>
                <td>
                    <asp:TextBox ID="txttarif" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>KATEGORİ:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="308px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnekle" runat="server" CssClass="auto-style9" Height="40px" OnClick="btnekle_Click" Text="EKLE" Width="200px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
