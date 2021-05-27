<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-bottom: 0px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="auto-style6">
        <asp:DataList ID="DataList2" runat="server" Width="450px" CssClass="auto-style5">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                <strong><em>
                <br />
                </em></strong>
            </ItemTemplate>
        </asp:DataList>
            <div class="auto-style7">
                <br />
            </div>
        </div>
    
    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/Resimler/blog.jpg" Width="450px" />
</asp:Content>
