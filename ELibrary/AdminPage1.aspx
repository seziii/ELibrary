<%@ Page Title="" Language="C#" MasterPageFile="~/ElibraryMaster.Master" AutoEventWireup="true" CodeBehind="AdminPage1.aspx.cs" Inherits="ELibrary.AdminPage1" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblSpisak" runat="server" Text="Списък книги:" meta:resourcekey="lblSpisakResource1"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" Height="50px" Width="125px" meta:resourcekey="DetailsView1Resource1">
        <Fields>
            <asp:BoundField DataField="BookID" HeaderText="Книга №" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="BookType" HeaderText="Тип на книгата" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="BookTitle" HeaderText="Заглавие" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="BookAuthor" HeaderText="Автор" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="BookDescription" HeaderText="Описание!" SortExpression="BookDescription" meta:resourcekey="BoundFieldResource5" />
            <asp:BoundField DataField="BookPrice" HeaderText="Цена" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource6" />
            <asp:BoundField DataField="BookQty" HeaderText="Количество" SortExpression="BookQty" meta:resourcekey="BoundFieldResource7" />
            <asp:CommandField CancelText="Отказ" DeleteText="Изтриване" EditText="Редактиране" InsertText="Нов запис" NewText="Нов" SelectText="Избери" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" meta:resourcekey="CommandFieldResource1" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty]) VALUES (@BookID, @BookType, @BookTitle, @BookAuthor, @BookDescription, @BookPrice, @BookQty)" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty] FROM [Books]" UpdateCommand="UPDATE [Books] SET [BookType] = @BookType, [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [BookDescription] = @BookDescription, [BookPrice] = @BookPrice, [BookQty] = @BookQty WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookID" Type="String" />
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" meta:resourcekey="FileUpload1Resource1" />
&nbsp;<asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Качване на файл" meta:resourcekey="btnUploadResource1" />
    <br />
    <asp:Label ID="lblMessageText" runat="server" Text="Label" Visible="False" meta:resourcekey="lblMessageTextResource1"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
