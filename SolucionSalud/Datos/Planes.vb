Public Class Planes
    Inherits Conexion

    Public Sub InsertarPlan(ByRef codplan As Integer, ByVal pnombre As String, ByVal pdescripcion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "InsertarPlanes"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("@codplan", codplan))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tdni", pnombre))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tobservacion", pdescripcion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se insertar el Tutor" & vbCrLf & ex.Message)
        End Try
    End Sub
    Public Sub ModificarPlan(ByRef codplan As Integer, ByVal pnombre As String, ByVal pdescripcion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "InsertarPlanes"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("@codplan", codplan))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tdni", pnombre))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tobservacion", pdescripcion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se Modificó el Tutor" & vbCrLf & ex.Message)
        End Try
    End Sub
    Public Sub EliminarPlan(ByVal codplan As Integer)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "EliminarPersona"
            comando.Parameters.Add(New OleDb.OleDbParameter("@codplan", codplan))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se puede Eliminar el Plan" & vbCrLf & ex.Message)
        End Try
    End Sub
End Class
