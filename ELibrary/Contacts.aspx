<%@ Page Title="" Language="C#" MasterPageFile="~/ElibraryMaster.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="ELibrary.Contacts" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-weight: normal;
        }
        .auto-style3 {
            margin-left: 4px;
        }
        .auto-style4 {
            margin-left: 3px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            color: #FFFFFF;
            background-color: #CC0000;
        }
        .auto-style7 {
            font-weight: normal;
            color: #FF0000;
        }
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style14">
        <tr>
            <td>    <asp:Label ID="LblDo" runat="server" CssClass="auto-style2" Text="До: " meta:resourcekey="LblDoResource1"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TxbDo" runat="server" CssClass="auto-style5" meta:resourcekey="TxbDoResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="LblOt" runat="server" CssClass="auto-style2" Text="От: " meta:resourcekey="LblOtResource1"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TxbOt" runat="server" CssClass="auto-style4" meta:resourcekey="TxbOtResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="LblOtnosno" runat="server" CssClass="auto-style2" Text="Относно: " meta:resourcekey="LblOtnosnoResource1"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TxbOtnosno" runat="server" CssClass="auto-style3" meta:resourcekey="TxbOtnosnoResource1" OnTextChanged="TxbOtnosno_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="LblZapitvane" runat="server" CssClass="auto-style2" Text="Запитване: " meta:resourcekey="LblZapitvaneResource1"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TxbZapitvane" runat="server" Height="62px" TextMode="MultiLine" meta:resourcekey="TxbZapitvaneResource1" OnTextChanged="TxbZapitvane_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="2">
    <asp:Button ID="BtnIzprati" runat="server" CssClass="auto-style6" OnClick="BtnIzprati_Click" Text="Изпрати" meta:resourcekey="BtnIzpratiResource1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">
    <asp:Label ID="LblMsgMail" runat="server" CssClass="auto-style7" Text="[MailMsg]" meta:resourcekey="LblMsgMailResource1"></asp:Label>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp; 
</asp:Content>
