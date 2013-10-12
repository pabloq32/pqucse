Public Class Especialidades
    Inherits Conexion

    Public Sub InsertarEspecialidad(ByVal descripcion As String, ByVal observaciones As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "InsertarEspecialidad"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("@descipcion", descripcion))
            comando.Parameters.Add(New OleDb.OleDbParameter("@observaciones", observaciones))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se pudo Insertar la Especialidad" & vbCrLf & ex.Message)

        End Try
    End Sub
    Public Sub ModificarEspecialidad(ByVal descripcion As String, ByVal observaciones As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "ModificarEspecialidad"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("@descipcion", descripcion))
            comando.Parameters.Add(New OleDb.OleDbParameter("@observaciones", observaciones))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se pudo Insertar la Especialidad" & vbCrLf & ex.Message)

        End Try
    End Sub
    Public Sub EliminarEspecialidad(ByVal idespecialidad As Integer)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "EliminarEspecialidad"
            comando.Parameters.Add(New OleDb.OleDbParameter("@idespecialidad", idespecialidad))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se puede Eliminar La Especialidad" & vbCrLf & ex.Message)
        End Try
    End Sub
End Class
