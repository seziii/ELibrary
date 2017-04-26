<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="ELibrary.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblSpisak" runat="server" Text="Списък книги:"></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="BookID" HeaderText="Книга №" ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="BookType" HeaderText="Тип на книгата" SortExpression="BookType" />
                <asp:BoundField DataField="BookTitle" HeaderText="Заглавие" SortExpression="BookTitle" />
                <asp:BoundField DataField="BookAuthor" HeaderText="Автор" SortExpression="BookAuthor" />
                <asp:BoundField DataField="BookDescription" HeaderText="Описание" SortExpression="BookDescription" />
                <asp:BoundField DataField="BookPrice" HeaderText="Цена" SortExpression="BookPrice" />
                <asp:BoundField DataField="BookQty" HeaderText="Количество" SortExpression="BookQty" />
                <asp:CommandField DeleteText="Изтриване" EditText="Редактиране" InsertText="Нов запис" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
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
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Качване на файл" />
    
    </div>
    </form>
</body>
</html>
