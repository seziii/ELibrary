<%@ Page Title="" Language="C#" MasterPageFile="~/ElibraryMaster.Master" AutoEventWireup="true" CodeBehind="NeuspeshnoPlashtane.aspx.cs" Inherits="ELibrary.NeuspeshnoPlashtane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblImeNaButon" runat="server" Text="Име на бутон "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbImeNaButon" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblOpisanieNaStokata" runat="server" Text="Описание на стоката "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbOpisanieNaStokata" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblSuma" runat="server" Text="Сума"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbSuma" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblURLPriPotvirdenoPlashtane" runat="server" Text="URL при потвърдено плащане "></asp:Label>
&nbsp;<asp:TextBox ID="txbURLPriPotvardenoPlashtane" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblURLPriOtkazanoPlashtane" runat="server" Text="URL при отказано плащане "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbURLPriOtkazanoPlashtane" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnOtkaz" runat="server" Height="26px" Text="Отказ" Width="143px" OnClick="btnOtkaz_Click" />
&nbsp;<asp:Button ID="btnPotvardi" runat="server" Text="Потвърждаване" OnClick="btnPotvardi_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
