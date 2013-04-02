<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="edit.aspx.vb" Inherits="detailsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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

    <asp:DetailsView 
              ID="DetailsView2" 
              runat="server" 
              AutoGenerateRows="False" 
              DataKeyNames="BookID" 
              DataSourceID="SqlDataSource1"
              HeaderText="Book Details"
	      CssClass="cssdetailsview"
              HeaderStyle-CssClass="header"
              FieldHeaderStyle-CssClass="fieldheader"
              ItemStyle-CssClass="item"
              AlternatingRowStyle-CssClass="altrow"
              CommandRowStyle-CssClass="command"
              PagerStyle-CssClass="pager"
          >
    </asp:DetailsView>



    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
        EnablePagingCallbacks="True" Height="45px" Width="308px" 
    AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="BookName" HeaderText="Book Name" 
                SortExpression="BookName" />
            <asp:BoundField DataField="Author" HeaderText="Author" 
                SortExpression="Author" />
            <asp:BoundField DataField="ReleaseDate" HeaderText="Release Date" 
                SortExpression="ReleaseDate" />
            <asp:BoundField DataField="avalibility" HeaderText="Avalibility" 
                SortExpression="avalibility" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

