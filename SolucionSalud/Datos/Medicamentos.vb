Public Class Medicamentos
    Inherits Conexion

    Public Sub InsertarMedicmentos(ByVal codmedicamento As Integer, ByVal mnombre As String, ByVal mcantidad As Integer, ByVal mdescripcion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "InsertarMedicamentos"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("@codmedicamento", codmedicamento))
            comando.Parameters.Add(New OleDb.OleDbParameter("@mnombre", mnombre))
            comando.Parameters.Add(New OleDb.OleDbParameter("@mcantidad", mcantidad))
            comando.Parameters.Add(New OleDb.OleDbParameter("@mdescripcion", mdescripcion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se Insertó el Medicamento" & vbCrLf & ex.Message)
        End Try
    End Sub
    Public Sub ModificarMedicamentos(ByVal codmedicamento As Integer, ByVal mnombre As String, ByVal mcantidad As Integer, ByVal mdescripcion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "ModificarMedicamentos"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("@codmedicamento", codmedicamento))
            comando.Parameters.Add(New OleDb.OleDbParameter("@mnombre", mnombre))
            comando.Parameters.Add(New OleDb.OleDbParameter("@mcantidad", mcantidad))
            comando.Parameters.Add(New OleDb.OleDbParameter("@mdescripcion", mdescripcion))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()
        Catch ex As Exception
            MsgBox("No se Modificó el Medicamento" & vbCrLf & ex.Message)
        End Try
    End Sub
    Public Sub EliminarMedicamentos(ByVal codmedicamento As Integer, ByVal mnombre As String, ByVal mcantidad As Integer, ByVal mdescripcion As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.CommandText = "EliminarMedicamentos"
            comando.Connection = Me.Conexion
            comando.Parameters.Add(New OleDb.OleDbParameter("codmedicamento", codmedicamento))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se Eliminó el Medicamento" & vbCrLf & ex.Message)
        End Try
    End Sub
End Class
