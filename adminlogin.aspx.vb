Imports System.Data
Imports MySql.Data.MySqlClient

Public Class adminlogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles col.TextChanged

    End Sub

    Protected Sub c_Click(sender As Object, e As EventArgs) Handles c.Click
        Dim dd As New MySqlCommand
        Dim dr As MySqlDataReader
        Dim myconn As New MySqlConnection()

        myconn.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        dd.Connection = myconn

        myconn.Open()
        dd.CommandText = "SELECT * FROM admin WHERE Username = '" & col.Text & "'"
        dr = dd.ExecuteReader

        If dr.HasRows Then
            Dim cn As New MySqlConnection
            Dim cmdd As New MySqlCommand


            myconn.Close()
            myconn.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
            myconn.Open()
            Dim cmd As New MySqlCommand


            cmd.Connection = myconn
            cmd.CommandText = "SELECT Username FROM admin WHERE col = '" & col.Text & "'"
            cmd.Dispose()

            Response.Redirect("admin.aspx")
        Else
            Response.Redirect("adminlogin.aspx")
            MsgBox("Invalid Id or password")
            rol.Text = ""
            col.Text = ""
        End If

    End Sub
End Class