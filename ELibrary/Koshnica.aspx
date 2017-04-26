<%@ Page Title="" Language="C#" MasterPageFile="~/ElibraryMaster.Master" AutoEventWireup="true" CodeBehind="Koshnica.aspx.cs" Inherits="ELibrary.Koshnica" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            background-color: #FFCC99;
        }
        .auto-style6 {
            background-color: #FFFFCC;
        }
        .auto-style7 {
            background-color: #FFFFCC;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" meta:resourcekey="DataList1Resource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
            <br />
            BookTitle:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            BookID:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' meta:resourcekey="PriceLabelResource1" />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' meta:resourcekey="QuantityLabelResource1" />
            <br />
            Suma:
            <asp:Label ID="SumaLabel" runat="server" Text='<%# Eval("Suma") %>' meta:resourcekey="SumaLabelResource1" />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележи за премахване" meta:resourcekey="CheckBox1Resource1" />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT BookTitle, BookID, Price, SUM(Qty) AS Quantity, SUM(Price * Qty) AS Suma FROM ShopCart GROUP BY BookTitle, BookID, Price"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="select sum(Qty*Price) as Suma from ShopCart"></asp:SqlDataSource>
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="16px" Width="847px" meta:resourcekey="Panel1Resource1">
        <asp:Label ID="LblObshto" runat="server" Text="Общо:" meta:resourcekey="LblObshtoResource1"></asp:Label>
        &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ShowHeader="False" meta:resourcekey="GridView1Resource1">
            <Columns>
                <asp:BoundField DataField="Suma" HeaderText="Suma" ReadOnly="True" SortExpression="Suma" meta:resourcekey="BoundFieldResource1" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
    <br />
    <br />
    <asp:Button ID="BtnIztrivane" runat="server" OnClick="BtnIztrivane_Click" Text="Изтриване на маркираните книги" meta:resourcekey="BtnIztrivaneResource1" />
    <br />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
