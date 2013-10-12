Public Class Centros
    Inherits Conexion

    Public Sub InsertarCentro(ByVal ccuit As Integer, ByVal ctipo As Integer, ByVal cnombre As String, ByVal cdireccion As String, ByVal cidbarrio As Integer, ByVal ctelefono As Integer, ByVal ccorreo As String, ByVal cdniresponsable As Integer)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "InsertarCentro)"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("@cnombre", cnombre))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ccuit", ccuit))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ctipo", ctipo))
            comando.Parameters.Add(New OleDb.OleDbParameter("@cdireccion", cdireccion))
            comando.Parameters.Add(New OleDb.OleDbParameter("@cidbarrio", cidbarrio))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ctelefono", ctelefono))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ccorreo", ccorreo))
            comando.Parameters.Add(New OleDb.OleDbParameter("@cdniresponsable", cdniresponsable))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se insertar el Centro de Salud" & vbCrLf & ex.Message)
        End Try
    End Sub

    Public Sub ModificarCentro(ByVal ccuit As Integer, ByVal ctipo As Integer, ByVal cnombre As String, ByVal cdireccion As String, ByVal cidbarrio As Integer, ByVal ctelefono As Integer, ByVal ccorreo As String, ByVal cdniresponsable As Integer)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "ModificarCentro)"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("@cnombre", cnombre))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ccuit", ccuit))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ctipo", ctipo))
            comando.Parameters.Add(New OleDb.OleDbParameter("@cdireccion", cdireccion))
            comando.Parameters.Add(New OleDb.OleDbParameter("@cidbarrio", cidbarrio))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ctelefono", ctelefono))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ccorreo", ccorreo))
            comando.Parameters.Add(New OleDb.OleDbParameter("@cdniresponsable", cdniresponsable))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se modificó el Centro de Salud" & vbCrLf & ex.Message)
        End Try
    End Sub

    Public Sub EliminarCentro(ByVal ccuit As Integer)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "EliminarCentro"
            comando.Parameters.Add(New OleDb.OleDbParameter("@ccuit", ccuit))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se Eliminó el Centro de Salud" & vbCrLf & ex.Message)
        End Try
    End Sub
End Class
