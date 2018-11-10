Imports System.Data
Imports MySql.Data.MySqlClient
Public Class searchpage
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim t1 As String
        Dim n1 As String
        Dim g1 As String
        Dim i1 As String

        Dim mes As String

     

        t1 = (Session("l1"))
        Label1.Text = t1
        n1 = (Session("l2"))
        Label2.Text = n1
        g1 = (Session("l3"))
        Label3.Text = g1
        i1 = (Session("l5"))
        ImageButton1.ImageUrl = i1

        mes = (Session("l4"))
        Label4.Text = mes

        Dim todayDate As DateTime = DateTime.Now
        lblTodayDate.Text = Convert.ToString(todayDate)

    End Sub

    Protected Sub imgs_Click(sender As Object, e As ImageClickEventArgs) Handles imgs.Click
        Dim dd As New MySqlCommand
        Dim dr As MySqlDataReader
        Dim myconn As New MySqlConnection()
        Dim t1 As String
        Dim n1 As String
        Dim g1 As String
        Dim mes As String
        Dim i1 As String

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
            Label4.Text = ""
            Response.Redirect("searchpage.aspx", False)
        Else
            mes = "No Results"
            MsgBox(mes, MsgBoxStyle.OkOnly)
            Label1.Text = ""
            Label2.Text = ""
            Label3.Text = ""
            Label4.Text = ""
            ImageButton1.ImageUrl = ""
            ImageButton1.Visible = False
            



        End If

    End Sub


    Protected Sub btnimg(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Dim dd As New MySqlCommand
        Dim dr As MySqlDataReader
        Dim myconn As New MySqlConnection()

        Dim f1 As String


        myconn.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        dd.Connection = myconn

        myconn.Open()
        dd.CommandText = "SELECT PBook FROM books "
        dr = dd.ExecuteReader
        f1 = ""

        While (dr.HasRows And dr.Read())

            f1 = dr.GetString(dr.GetOrdinal("PBook"))

        End While
        If dr.HasRows Then
            Dim cn As New MySqlConnection
            Dim cmdd As New MySqlCommand


            myconn.Close()
            myconn.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
            myconn.Open()
            Dim cmd As New MySqlCommand


            cmd.Connection = myconn
            cmd.CommandText = "SELECT PBook FROM books"
            cmd.Dispose()


            Session("l7") = f1
            Response.Redirect("viewpage.aspx", False)


        End If


        Dim cons As New MySqlConnection
        Dim cmds As New MySqlCommand
        Dim todayDate As DateTime = DateTime.Today

        cons.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        cmds.Connection = cons
        cons.Open()
        cmds.Dispose()
        cmds.CommandText = "INSERT INTO history(Date,Title,Author,Name) VALUES('" & Convert.ToDateTime(lblTodayDate.Text).ToString("yyyy-MM-dd HH:mm:ss") & "', '" & Label1.Text & "','" & Label2.Text & "','" & Label3.Text & "' )"
        cmds.ExecuteNonQuery()
        cmds.Dispose()
        Response.Redirect("viewpage.aspx")
        cons.Close()

    End Sub

    Protected Sub tsearch_TextChanged(sender As Object, e As EventArgs) Handles tsearch.TextChanged

    End Sub
End Class