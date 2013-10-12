Public Class Tutores
    Inherits Conexion

    Public Sub InsertarTutor(ByVal tdni As String, ByVal tobservacion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "InsertarTutor"
            'comando.Parameters.Add(New OleDb.OleDbParameter("@tidtutor", tidtutor))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tdni", tdni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tobservacion", tobservacion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se insertar el Tutor" & vbCrLf & ex.Message)
        End Try
    End Sub
    Public Sub ModificarTutor(ByVal tdni As String, ByVal tobservacion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "ModificarTutor"
            'comando.Parameters.Add(New OleDb.OleDbParameter("@tidtutor", tidtutor))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tdni", tdni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tobservacion", tobservacion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se pudo modificar el Tutor" & vbCrLf & ex.Message)
        End Try
    End Sub
    Public Sub EliminarTutor(ByVal tdni As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "EliminarTutor"
            comando.Parameters.Add(New OleDb.OleDbParameter("@tdni", tdni))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se pudo eliminar el Tutor" & vbCrLf & ex.Message)
        End Try
    End Sub
    Public Function ListarTutor() As DataTable
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.Text
            comando.Connection = Me.Conexion
            comando.CommandText = "Select * From Tutores"
            Conexion.Open()
            Dim ds As New DataSet()
            Dim da As New OleDb.OleDbDataAdapter(comando)
            da.Fill(ds, "Tutores")
            comando.ExecuteNonQuery()
            Conexion.Close()
            Return ds.Tables("Tutores")

        Catch ex As Exception
            MsgBox("No se pudo listar los Tutores" & vbCrLf & ex.Message)
            Return Nothing
        End Try
    End Function
End Class
