
Partial Class detailsView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delBook As String = e.Values("BookName").ToString
        Response.Write("The record")
        Response.Write("<span class = deletedbookhighlight>")
        Response.Write(delBook)
        Response.Write("</span> has been deleted from the database")

        Response.AddHeader("REFRESH", "3;URL=./book.aspx")


    End Sub


    Protected Sub DetailsView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./book.aspx")
    End Sub



    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./book.aspx")
    End Sub
End Class
