<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.HakkimizdaAdminn" %>
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
        .auto-style10 {
        font-size: medium;
    }
    .auto-style11 {
        text-align: center;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click1" />
                    </strong></td>
                <td><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="txtmetin" runat="server" CssClass="auto-style10" Height="200px" TextMode="MultiLine" Width="436px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="btnguncelle" runat="server" CssClass="auto-style6" Height="40px"  Text="GÜNCELLE" Width="200px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
