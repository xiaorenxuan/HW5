<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="add.aspx.vb" Inherits="bookView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="BookDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_application %>" 
        DeleteCommand="DELETE FROM [BookTable] WHERE [BookID] = @BookID" 
        InsertCommand="INSERT INTO [BookTable] ([BookName], [Author], [ReleaseDate], [avalibility]) VALUES (@BookName, @Author, @ReleaseDate, @avalibility)" 
        SelectCommand="SELECT * FROM [BookTable]" 
        UpdateCommand="UPDATE [BookTable] SET [BookName] = @BookName, [Author] = @Author, [ReleaseDate] = @ReleaseDate, [avalibility] = @avalibility WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter DbType="Date" Name="ReleaseDate" />
            <asp:Parameter DbType="Date" Name="avalibility" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter DbType="Date" Name="ReleaseDate" />
            <asp:Parameter DbType="Date" Name="avalibility" />
            <asp:Parameter Name="BookID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BookID" 
        DataSourceID="BookDataSource" Height="142px" Width="393px"
        PageSize="52" 
        Gridlines="None"
        CssClass="cssgridview"
        AlternatingRowStyle-CssClass="alt"
        PagerStyle-CssClass="pgr"
        >
        
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="BookID" HeaderText="BookID" 
                SortExpression="BookID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" 
                SortExpression="BookName" />
            <asp:BoundField DataField="Author" HeaderText="Author" 
                SortExpression="Author" />
            <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" 
                SortExpression="ReleaseDate" />
            <asp:BoundField DataField="avalibility" HeaderText="avalibility" 
                SortExpression="avalibility" />
        </Columns>
    </asp:GridView>
</asp:Content>

