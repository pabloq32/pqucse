Public Class Especialistas
    Inherits Conexion

    Public Sub InsertarEspecialista(ByVal edni As Integer, eidespecialidad As Integer, ByVal eobservacion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "InsertarEspecialista"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("@edni", edni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@eidespecialista", eidespecialidad))
            comando.Parameters.Add(New OleDb.OleDbParameter("@eobservacion", eobservacion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se Insertó el Especialista" & vbCrLf & ex.Message)
        End Try

    End Sub


    Public Sub InsertarModificar(ByVal edni As Integer, eidespecialidad As Integer, ByVal eobservacion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "ModificarEspecialista"
            comando.Connection = Me.Conexion
            'comando.Parameters.Add(New OleDb.OleDbParameter("@edni", edni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@eidespecialista", eidespecialidad))
            comando.Parameters.Add(New OleDb.OleDbParameter("@eobservacion", eobservacion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se Modificó el Especialista" & vbCrLf & ex.Message)
        End Try
    End Sub

    Public Sub EliminarEspecialista(ByVal edni As Integer)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "EliminarEspecialista"
            comando.Parameters.Add(New OleDb.OleDbParameter("edni", edni))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se Eliminó el Especialista" & vbCrLf & ex.Message)
        End Try
    End Sub
End Class
