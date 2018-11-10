Imports System.Data
Imports MySql.Data.MySqlClient
Imports System.IO

Public Class admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            binddata()
        End If

    End Sub


    Protected Sub Repeater3_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater3.ItemCommand
        Dim rowId As String
        Dim connString As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        Dim con As New MySqlConnection()

        con.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        con.Open()


        Dim objDataset As New DataSet
        Dim cmd As New MySqlCommand("delete from books where BookID = @BookID", con)

        If (e.CommandName = "remove") Then
            rowId = e.CommandArgument.ToString()
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If
            cmd.Parameters.AddWithValue("@BookID", e.CommandArgument)
            cmd.ExecuteNonQuery()
            cmd.Dispose()
            Response.Redirect("admin.aspx")
            con.Close()
            binddata()

        End If


    End Sub


    Protected Sub logut_Click(sender As Object, e As EventArgs) Handles logut.Click
        Dim result As String = MsgBox("Are you sure you want to logout?", MsgBoxStyle.YesNo, "Confirmation")
        If result = vbYes Then
            Response.Redirect("adminlogin.aspx")

        ElseIf result = vbNo Then
            Response.Redirect("admin.aspx")
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
            sqlConn = "select * from books"
            objDataAdapter = New MySqlDataAdapter(sqlConn, con)
            objDataAdapter.Fill(objDataset)
            Repeater1.DataSource = objDataset
            Repeater1.DataBind()
            Repeater2.DataSource = objDataset
            Repeater2.DataBind()
            Repeater3.DataSource = objDataset
            Repeater3.DataBind()


        Catch ex As MySqlException

        Finally
            con.Close()
        End Try
    End Sub


    Protected Sub Repeater2_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater2.ItemCommand
        Dim connString As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        Dim con As New MySqlConnection()

        con.ConnectionString = "Database=elibrary;Data Source=localhost;User Id=root;Password="
        con.Open()

        If e.CommandName = "edit" Then

            DirectCast(e.Item.FindControl("titles"), Label).Visible = False
            DirectCast(e.Item.FindControl("authors"), Label).Visible = False
            DirectCast(e.Item.FindControl("genres"), Label).Visible = False


            DirectCast(e.Item.FindControl("t"), TextBox).Visible = True
            DirectCast(e.Item.FindControl("a"), TextBox).Visible = True
            DirectCast(e.Item.FindControl("g"), TextBox).Visible = True
            DirectCast(e.Item.FindControl("ledit"), LinkButton).Visible = False
            DirectCast(e.Item.FindControl("lupdate"), LinkButton).Visible = True
            DirectCast(e.Item.FindControl("lcancel"), LinkButton).Visible = True


        End If
        If e.CommandName = "update" Then
            Dim boid As String = DirectCast(e.Item.FindControl("b"), TextBox).Text
            Dim ti As String = DirectCast(e.Item.FindControl("t"), TextBox).Text
            Dim au As String = DirectCast(e.Item.FindControl("a"), TextBox).Text
            Dim gen As String = DirectCast(e.Item.FindControl("g"), TextBox).Text
            Dim adp As New MySqlDataAdapter("Update books set Title=@Title, Author=@Author,Genre=@Genre where BookID=@BookID", con)
            adp.SelectCommand.Parameters.AddWithValue("@BookID", e.CommandArgument)
            adp.SelectCommand.Parameters.AddWithValue("@Title", ti)
            adp.SelectCommand.Parameters.AddWithValue("@Author", au)
            adp.SelectCommand.Parameters.AddWithValue("@Genre", gen)

            Dim ds As New DataSet()
            adp.Fill(ds)
            binddata()
            Response.Redirect("admin.aspx")

        End If

        If e.CommandName = "cancel" Then

            DirectCast(e.Item.FindControl("titles"), Label).Visible = True
            DirectCast(e.Item.FindControl("authors"), Label).Visible = True
            DirectCast(e.Item.FindControl("genres"), Label).Visible = True

            DirectCast(e.Item.FindControl("t"), TextBox).Visible = False
            DirectCast(e.Item.FindControl("a"), TextBox).Visible = False
            DirectCast(e.Item.FindControl("g"), TextBox).Visible = False
            DirectCast(e.Item.FindControl("ledit"), LinkButton).Visible = True
            DirectCast(e.Item.FindControl("lupdate"), LinkButton).Visible = False
            DirectCast(e.Item.FindControl("lcancel"), LinkButton).Visible = False

        End If
    End Sub

    Protected Sub bSave_Click(sender As Object, e As EventArgs) Handles bSave.Click


        Dim filename As String = Path.GetFileName(File.PostedFile.FileName)
        Dim contentType As String = File.PostedFile.ContentType
        Using fs As Stream = File.PostedFile.InputStream
            Using br As New BinaryReader(fs)
                Dim bytes As Byte() = br.ReadBytes(CInt(fs.Length))

                Dim cn As String = "Database=elibrary;Data Source=localhost;User Id=root;Password="
                Using con As New MySqlConnection(cn)
                    Dim query As String = "insert into books values(@Book, @ContentType, @Data)"

                    Using cmd As New MySqlCommand(query)
                        Try
                            cmd.Connection = con

                            cmd.Parameters.Add("@Book", MySqlDbType.VarChar).Value = filename
                            cmd.Parameters.Add("@ContentType", MySqlDbType.VarChar).Value = contentType
                            cmd.Parameters.Add("@Data", MySqlDbType.Blob).Value = bytes
                            con.Open()
                            cmd.ExecuteNonQuery()
                        Catch ex As MySqlException

                        Finally
                            con.Close()
                        End Try


                        cmd.CommandText = "INSERT INTO books(Title,Author,Genre,BKImage,Book,ContentType,Data,PBook,PContent,PData) VALUES( '" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & Path.GetFileName(File.PostedFile.FileName) & "','" & File.PostedFile.ContentType & "','" & File.PostedFile.ContentLength & "','" & Path.GetFileName(File2.PostedFile.FileName) & "','" & File2.PostedFile.ContentType & "','" & File2.PostedFile.ContentLength & "'  )"
                        con.Open()
                        MsgBox("Information Successfully Saved", MsgBoxStyle.OkOnly)
                        cmd.ExecuteNonQuery()


                    End Using
                   
                End Using
               
            End Using
        End Using

        
        binddata()
        Response.Redirect("admin.aspx")
    End Sub

  

End Class