Imports System.Data
Imports MySql.Data.MySqlClient
Imports System.IO

Public Class viewpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim l7 As String
        Dim t1 As String
        Dim n1 As String
        Dim g1 As String
        Dim i1 As String


       

        t1 = (Session("l1"))
        Label1.Text = t1
        n1 = (Session("l2"))
        Label2.Text = n1
        g1 = (Session("l3"))
        Label3.Text = g1
        i1 = (Session("l5"))
        ImageButton2.ImageUrl = i1

      


        l7 = (Session("l7"))
        ifrStory.Attributes.Add("src", "/pdfs/" + l7)

    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim result As String = MsgBox("Are you sure you want to login?", MsgBoxStyle.YesNo, "Confirmation")
        If result = vbYes Then
            Response.Redirect("loginuser.aspx")

        ElseIf result = vbNo 
            Response.Redirect("viewpage.aspx")
        End If
    End Sub

    Protected Sub tsearch_TextChanged(sender As Object, e As EventArgs) Handles tsearch.TextChanged

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

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
     
    End Sub
End Class
