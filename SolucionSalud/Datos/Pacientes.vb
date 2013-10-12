Public Class Pacientes
    Inherits Conexion

    Public Sub AgregarPaciente(ByVal pdni As Integer, ByVal tdni As Integer, ByVal pobservacion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "InsertarPaciente"
            comando.Parameters.Add(New OleDb.OleDbParameter("@pdni", pdni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tdni", tdni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@pobservacion", pobservacion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se insertar el Paciente" & vbCrLf & ex.Message)
        End Try
    End Sub

    Public Sub ModificarPaciente(ByVal pdni As Integer, ByVal tdni As Integer, ByVal pobservacion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "ModificarPaciente"
            comando.Parameters.Add(New OleDb.OleDbParameter("@pdni", pdni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@tdni", tdni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@pobservacion", pobservacion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se modificar el Paciente" & vbCrLf & ex.Message)
        End Try
    End Sub

    Public Sub EliminarPaciente(ByVal pdni As Integer)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "EliminarPaciente"
            comando.Parameters.Add(New OleDb.OleDbParameter("pdni", pdni))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se Elimino el Paciente" & vbCrLf & ex.Message)
        End Try
    End Sub
End Class
