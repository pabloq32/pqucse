Public Class Personas
    Inherits Conexion

    Public Sub InsertarPersona(ByVal dni As Integer, ByVal apellido As String, ByVal nombre As String, ByVal direccion As String, ByVal idbarrio As Integer, ByVal telefono As Integer, ByVal celular As Integer, ByVal correoelectronico As String, ByVal fecha_nacimiento As Date, ByVal idsexo As Integer, ByVal ciudad As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "InsertarPersona"
            comando.Parameters.Add(New OleDb.OleDbParameter("@dni", dni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@apellido", apellido))
            comando.Parameters.Add(New OleDb.OleDbParameter("@nombre", nombre))
            comando.Parameters.Add(New OleDb.OleDbParameter("@direccion", direccion))
            comando.Parameters.Add(New OleDb.OleDbParameter("@idbarrio", idbarrio))
            comando.Parameters.Add(New OleDb.OleDbParameter("@telefono", telefono))
            comando.Parameters.Add(New OleDb.OleDbParameter("@celular", celular))
            comando.Parameters.Add(New OleDb.OleDbParameter("@correoelectronico", correoelectronico))
            comando.Parameters.Add(New OleDb.OleDbParameter("@fecha_nacimiento", fecha_nacimiento))
            comando.Parameters.Add(New OleDb.OleDbParameter("@idsexo", idsexo))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ciudad", ciudad))
            'comando.Parameters.Add(New OleDb.OleDbParameter("@idprovincia", idprovincia))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()


        Catch ex As Exception
            MsgBox("No se puede insertar la Persona" & vbCrLf & ex.Message)
        End Try
    End Sub

    Public Sub ModificarPersona(ByVal dni As Integer, ByVal apellido As String, ByVal nombre As String, ByVal direccion As String, ByVal idbarrio As Integer, ByVal telefono As Integer, ByVal celular As Integer, ByVal correoelectronico As String, ByVal fecha_nacimiento As Date, ByVal idsexo As Integer, ByVal ciudad As String)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "ModificarPersona"
            comando.Parameters.Add(New OleDb.OleDbParameter("@dni", dni))
            comando.Parameters.Add(New OleDb.OleDbParameter("@apellido", apellido))
            comando.Parameters.Add(New OleDb.OleDbParameter("@nombre", nombre))
            comando.Parameters.Add(New OleDb.OleDbParameter("@direccion", direccion))
            comando.Parameters.Add(New OleDb.OleDbParameter("@idbarrio", idbarrio))
            comando.Parameters.Add(New OleDb.OleDbParameter("@telefono", telefono))
            comando.Parameters.Add(New OleDb.OleDbParameter("@celular", celular))
            comando.Parameters.Add(New OleDb.OleDbParameter("@correoelectronico", correoelectronico))
            comando.Parameters.Add(New OleDb.OleDbParameter("@fecha_nacimiento", fecha_nacimiento))
            comando.Parameters.Add(New OleDb.OleDbParameter("@idsexo", idsexo))
            comando.Parameters.Add(New OleDb.OleDbParameter("@ciudad", ciudad))
            'comando.Parameters.Add(New OleDb.OleDbParameter("@idprovincia", idprovincia))
            comando.Connection.Open()
            comando.ExecuteNonQuery()
            comando.Connection.Close()

        Catch ex As Exception
            MsgBox("No se puede modificar la Persona" & vbCrLf & ex.Message)
        End Try
    End Sub
    Public Sub EliminarPersona(ByVal dni As Integer)
        Try
            Dim comando As New OleDb.OleDbCommand
            comando.CommandType = CommandType.StoredProcedure
            comando.Connection = Me.Conexion
            comando.CommandText = "EliminarPersona"
            comando.Parameters.Add(New OleDb.OleDbParameter("@dni", dni))
            Conexion.Open()
            comando.ExecuteNonQuery()
            Conexion.Close()

        Catch ex As Exception
            MsgBox("No se puede Eliminar Persona" & vbCrLf & ex.Message)
        End Try
    End Sub
End Class
