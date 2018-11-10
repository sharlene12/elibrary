Imports System.Data
Imports MySql.Data.MySqlClient
Imports System.IO

Public Class CatalogMem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim name As String

        name = (Session("memb"))
        memb.Text = name

        If Not Page.IsPostBack Then
            binddata()
            binddata2()
            binddata3()
            binddata4()
            binddata5()
            binddata6()
        End If

    End Sub
   
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Dim result As String = MsgBox("Are you sure you want to logout?", MsgBoxStyle.YesNo, "Confirmation")
        If result = vbYes Then
            Response.Redirect("loginuser.aspx")
        ElseIf result = vbNo Then
            Response.Redirect("CatalogMem.aspx")
        End If
    End Sub

    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater1.ItemCommand

    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("MemProf.aspx")
    End Sub
    Protected Sub binddata()
        Dim connString As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        Dim con As New MySqlConnection()
        Try
            con.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
            con.Open()
            Dim sqlConn As String
            Dim objDataAdapter As MySqlDataAdapter
            Dim objDataset As New DataSet
            sqlConn = "select BKImage,Title,Author,Genre from books where BookID = 13"
            objDataAdapter = New MySqlDataAdapter(sqlConn, con)
            objDataAdapter.Fill(objDataset)
            Repeater1.DataSource = objDataset
            Repeater1.DataBind()



        Catch ex As MySqlException

        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub binddata2()
        Dim connString As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        Dim con As New MySqlConnection()
        Try
            con.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
            con.Open()
            Dim sqlConn As String
            Dim objDataAdapter As MySqlDataAdapter
            Dim objDataset As New DataSet
            sqlConn = "select BKImage,Title,Author,Genre from books where BookID = 14"
            objDataAdapter = New MySqlDataAdapter(sqlConn, con)
            objDataAdapter.Fill(objDataset)
            Repeater2.DataSource = objDataset
            Repeater2.DataBind()



        Catch ex As MySqlException

        Finally
            con.Close()
        End Try
    End Sub



    Protected Sub binddata3()
        Dim connString As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        Dim con As New MySqlConnection()
        Try
            con.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
            con.Open()
            Dim sqlConn As String
            Dim objDataAdapter As MySqlDataAdapter
            Dim objDataset As New DataSet
            sqlConn = "select BKImage,Title,Author,Genre from books where BookID = 15"
            objDataAdapter = New MySqlDataAdapter(sqlConn, con)
            objDataAdapter.Fill(objDataset)
            Repeater3.DataSource = objDataset
            Repeater3.DataBind()

        Catch ex As MySqlException

        Finally
            con.Close()
        End Try
    End Sub


    Protected Sub binddata4()
        Dim connString As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        Dim con As New MySqlConnection()
        Try
            con.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
            con.Open()
            Dim sqlConn As String
            Dim objDataAdapter As MySqlDataAdapter
            Dim objDataset As New DataSet
            sqlConn = "select BKImage,Title,Author,Genre from books where BookID = 16"
            objDataAdapter = New MySqlDataAdapter(sqlConn, con)
            objDataAdapter.Fill(objDataset)
            Repeater4.DataSource = objDataset
            Repeater4.DataBind()

        Catch ex As MySqlException

        Finally
            con.Close()
        End Try
    End Sub


    Protected Sub binddata5()
        Dim connString As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        Dim con As New MySqlConnection()
        Try
            con.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
            con.Open()
            Dim sqlConn As String
            Dim objDataAdapter As MySqlDataAdapter
            Dim objDataset As New DataSet
            sqlConn = "select BKImage,Title,Author,Genre from books where BookID = 17"
            objDataAdapter = New MySqlDataAdapter(sqlConn, con)
            objDataAdapter.Fill(objDataset)
            Repeater5.DataSource = objDataset
            Repeater5.DataBind()

        Catch ex As MySqlException

        Finally
            con.Close()
        End Try
    End Sub



    Protected Sub binddata6()
        Dim connString As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        Dim con As New MySqlConnection()
        Try
            con.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
            con.Open()
            Dim sqlConn As String
            Dim objDataAdapter As MySqlDataAdapter
            Dim objDataset As New DataSet
            sqlConn = "select BKImage,Title,Author,Genre from books where BookID = 18"
            objDataAdapter = New MySqlDataAdapter(sqlConn, con)
            objDataAdapter.Fill(objDataset)
            Repeater6.DataSource = objDataset
            Repeater6.DataBind()

        Catch ex As MySqlException

        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
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
        dd.CommandText = "SELECT * FROM books WHERE Title='" & tx1.Text & "' AND Author='" & tx2.Text & "' AND Genre='" & tx3.Text & "'"
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
            cmd.CommandText = "SELECT Title,Author,Genre FROM books WHERE tx1= '" & tx1.Text & "',tx2='" & tx2.Text & "',tx3='" & tx3.Text & "'  "
            cmd.Dispose()

            Session("l1") = t1
            Session("l2") = n1
            Session("l3") = g1
            Session("l5") = i1

            Response.Redirect("Search.aspx", False)
        Else
            mes = "No Results"
            MsgBox(mes, MsgBoxStyle.OkOnly)
            tx1.Text = ""
            tx2.Text = ""
            tx3.Text = ""
        End If

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

            Response.Redirect("Search.aspx", False)
        Else
            mes = "No Results"
            MsgBox(mes, MsgBoxStyle.OkOnly)

        End If

    End Sub
End Class