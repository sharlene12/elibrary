Imports System.Data
Imports MySql.Data.MySqlClient

Public Class MemProf
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim name As String

        name = (Session("memb"))
        memb.Text = name

        If Not Page.IsPostBack Then
            binddata()
            binddata2()
        End If
    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim result As String = MsgBox("Are you sure you want to logout?", MsgBoxStyle.YesNo, "Confirmation")
        If result = vbYes Then
            Response.Redirect("loginuser.aspx")
        ElseIf result = vbNo Then
            Response.Redirect("HomeMem.aspx")
        End If

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
            sqlConn = "select Name,Address,Email,Gender,Number from users where Name = '" & memb.Text & "'"
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
            sqlConn = "select Name,Title,Author,Date from history where Name = '" & memb.Text & "'"
            objDataAdapter = New MySqlDataAdapter(sqlConn, con)
            objDataAdapter.Fill(objDataset)
            Repeater2.DataSource = objDataset
            Repeater2.DataBind()



        Catch ex As MySqlException

        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub bsave_Click(sender As Object, e As EventArgs) Handles bsave.Click
        Dim connString As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        Dim con As New MySqlConnection()

        con.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="

        Dim cmd As New MySqlCommand
        cmd.Connection = con
        cmd.CommandText = "UPDATE users set Email = '" & TextBox2.Text & "',Address= '" & TextBox3.Text & "',Number= '" & TextBox4.Text & "' where Name='" & memb.Text & "' "
        con.Open()
        cmd.Dispose()
        cmd.ExecuteNonQuery()
      
        binddata()
        binddata2()
        con.Close()
        MsgBox("Successfully saved", MsgBoxStyle.OkOnly)
        Response.Redirect("MemProf.aspx")

    End Sub
End Class