Imports System.Data
Imports MySql.Data.MySqlClient
Public Class about
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub imgs_Click(sender As Object, e As ImageClickEventArgs) Handles imgs.Click
        Dim dd As New MySqlCommand
        Dim dr As MySqlDataReader
        Dim myconn As New MySqlConnection()
        Dim t1 As String
        Dim n1 As String
        Dim g1 As String
        Dim i1 As String
        Dim mes As String

        myconn.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        dd.Connection = myconn

        myconn.Open()
        dd.CommandText = "SELECT * FROM books WHERE Title = '" & tsearch.Text & "'"
        dr = dd.ExecuteReader
        t1 = ""
        n1 = ""
        g1 = ""
        i1 = ""

        While (dr.HasRows And dr.Read())

            t1 = dr.GetString(dr.GetOrdinal("Title"))
            n1 = dr.GetString(dr.GetOrdinal("Author"))
            g1 = dr.GetString(dr.GetOrdinal("Genre"))
            i1 = dr.GetString(dr.GetOrdinal("BKImage"))

        End While
        If dr.HasRows Then
            Dim cn As New MySqlConnection
            Dim cmdd As New MySqlCommand


            myconn.Close()
            myconn.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
            myconn.Open()
            Dim cmd As New MySqlCommand


            cmd.Connection = myconn
            cmd.CommandText = "SELECT Title FROM books WHERE tsearch = '" & tsearch.Text & "'  "
            cmd.Dispose()

            Session("l1") = t1
            Session("l2") = n1
            Session("l3") = g1
            Session("l5") = i1

            Response.Redirect("searchpage.aspx", False)
        Else
            mes = "No Results"
            MsgBox(mes, MsgBoxStyle.OkOnly)

        End If
    End Sub
End Class