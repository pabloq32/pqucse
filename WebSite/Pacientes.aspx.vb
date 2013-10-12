Partial Class Default2
    Inherits System.Web.UI.Page

    Dim ocdpacientes As New Datos.Pacientes
    Dim ocdpersonas As New Datos.Personas
    Dim ocdtutores As New Datos.Tutores
    Dim barriov As New Integer
    Dim sexov As New Integer
    Dim fecha As New Date
    Dim b As Integer
    Public Function campovacio() As Integer
        If Me.TextBox1.Text = "" Then
            b = 1
            MsgBox("Debe Ingresar un DNI de Paciente")
        Else
            If Me.TextBox10.Text = "" Then
                b = 1
                MsgBox("Debe Ingresar un DNI de Tutor")
            Else
                If Me.TextBox2.Text = "" Then
                    b = 1
                    MsgBox("Debe Ingresar un Apellido")
                Else
                    If Me.TextBox3.Text = "" Then
                        b = 1
                        MsgBox("Debe Ingresar un Nombre")
                    Else
                        If Me.TextBox4.Text = "" Then
                            b = 1
                            MsgBox("Debe Ingresar una dirección")
                        Else
                            If Me.TextBox5.Text = "" Then
                                b = 1
                                MsgBox("Debe Ingresar un telefono")
                            Else
                                If Me.TextBox6.Text = "" Then
                                    b = 1
                                    MsgBox("Debe Ingresar un teléfono")
                                Else
                                    If Me.TextBox7.Text = "" Then
                                        b = 1
                                        MsgBox("Debe Ingresar correo electrónico")
                                    Else
                                        If Me.TextBox8.Text = "" Then
                                            b = 1
                                            MsgBox("Debe Ingresar una fecha de nacimiento")
                                        Else
                                            If Me.TextBox9.Text = "" Then
                                                b = 1
                                                MsgBox("Debe Ingresar una Ciudad")
                                            Else
                                                If Me.TextBox11.Text = "" Then
                                                    b = 1
                                                    MsgBox("Debe Ingresar una observación")
                                                Else


                                                End If


                                            End If
                                        End If
                                    End If
                                End If
                            End If
                        End If
                    End If
                End If
            End If
        End If

        Return b
    End Function
    Public Sub blanquearcampos()
        Me.TextBox1.Text = ""
        Me.TextBox2.Text = ""
        Me.TextBox3.Text = ""
        Me.TextBox4.Text = ""
        Me.TextBox5.Text = ""
        Me.DropBarrios.SelectedValue = 1
        Me.DropSexo.SelectedValue = 1
        Me.TextBox6.Text = ""
        Me.TextBox7.Text = ""
        Me.TextBox8.Text = ""
        Me.TextBox9.Text = ""
        Me.TextBox10.Text = ""
        Me.TextBox11.Text = ""
    End Sub
    Public Sub inicial()
        Me.DropBarrios.SelectedValue = 1
        Me.DropSexo.SelectedValue = 1
        Me.bttnaceptar.Enabled = False
        Me.bttncancelar.Enabled = False
        Me.TextBox1.Enabled = False
        Me.TextBox2.Enabled = False
        Me.TextBox3.Enabled = False
        Me.TextBox4.Enabled = False
        Me.TextBox5.Enabled = False
        Me.DropBarrios.Enabled = False
        Me.DropSexo.Enabled = False
        Me.TextBox6.Enabled = False
        Me.TextBox7.Enabled = False
        Me.TextBox8.Enabled = False
        Me.TextBox9.Enabled = False
        Me.TextBox10.Enabled = False
        Me.TextBox11.Enabled = False
        Me.bttnmodificar.Enabled = True
        Me.bttneliminar.Enabled = True
        Me.bttnagregar.Enabled = True

    End Sub
    Public Sub activarcampos()
        Me.TextBox1.Enabled = True
        Me.TextBox2.Enabled = True
        Me.TextBox3.Enabled = True
        Me.TextBox4.Enabled = True
        Me.TextBox5.Enabled = True
        Me.DropBarrios.Enabled = True
        Me.DropSexo.Enabled = True
        Me.TextBox6.Enabled = True
        Me.TextBox7.Enabled = True
        Me.TextBox8.Enabled = True
        Me.TextBox9.Enabled = True
        Me.TextBox10.Enabled = True
        Me.TextBox11.Enabled = True
    End Sub
    Public Sub limpiartodo()
        b = 0
        Me.bttnaceptar.Enabled = True
        Me.bttncancelar.Enabled = True
        Me.TextBox1.Enabled = True
        Me.TextBox2.Enabled = True
        Me.TextBox3.Enabled = True
        Me.TextBox4.Enabled = True
        Me.TextBox5.Enabled = True
        Me.DropBarrios.Enabled = True
        Me.DropSexo.Enabled = True
        Me.TextBox6.Enabled = True
        Me.TextBox7.Enabled = True
        Me.TextBox8.Enabled = True
        Me.TextBox9.Enabled = True
        Me.TextBox10.Enabled = True
        Me.TextBox11.Enabled = True
        Me.bttnaceptar.Enabled = False
        Me.bttnmodificar.Enabled = False
        Me.bttneliminar.Enabled = False
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        inicial()
        'blanquearcampos()
    End Sub
    Private Sub bttnagregar_Click(sender As Object, e As System.EventArgs) Handles bttnagregar.Click
        Me.bttnaceptar.Enabled = True
        Me.bttncancelar.Enabled = True
        activarcampos()
        Me.bttnmodificar.Enabled = False
        Me.bttneliminar.Enabled = False
    End Sub

    Private Sub bttnaceptar_Click(sender As Object, e As System.EventArgs) Handles bttnaceptar.Click
        If Me.bttnmodificar.Enabled = False Then
            If Me.bttneliminar.Enabled = False Then
                Try
                    'activarcampos()
                    'Me.bttneliminar.Enabled = True
                    'Me.bttnmodificar.Enabled = True
                    campovacio()
                    If b = 0 Then
                        barriov = Me.DropBarrios.SelectedValue
                        sexov = Me.DropSexo.SelectedValue
                        fecha = CDate(Me.TextBox8.Text)
                        ocdpacientes.AgregarPaciente(TextBox1.Text, TextBox10.Text, TextBox11.Text)
                        ocdtutores.InsertarTutor(TextBox10.Text, "Ninguna")
                        ocdpersonas.InsertarPersona(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, barriov, TextBox5.Text, TextBox6.Text, TextBox7.Text, fecha, sexov, TextBox9.Text)
                        limpiartodo()
                        blanquearcampos()

                    Else
                        b = 0
                        blanquearcampos()
                        inicial()
                    End If
                Catch ex As Exception
                    MsgBox("Registro Duplicado")
                End Try


            Else
                'aqui elimina
                
                Try
                    If Me.TextBox1.Text = "" Then
                        MsgBox("Ingrese el DNI")
                    Else
                        'NO MUESTRA ERROR SI NO EXISTE EL DNI :S
                        ocdpersonas.EliminarPersona(TextBox1.Text)
                        'ocdpacientes.EliminarPaciente(TextBox1.Text)
                        limpiartodo()
                        blanquearcampos()
                    End If


                Catch ex As Exception
                    MsgBox("DNI no encontrado")
                End Try

            End If
        Else
            'aqui modifica
            
            Try
                campovacio()
                If b = 0 Then
                    barriov = Me.DropBarrios.SelectedValue
                    sexov = Me.DropSexo.SelectedValue
                    fecha = CDate(Me.TextBox8.Text)
                    'ocdpacientes.AgregarPaciente(TextBox1.Text, TextBox10.Text, TextBox11.Text)
                    'ocdtutores.InsertarTutor(TextBox10.Text, "Ninguna")
                    ocdpersonas.ModificarPersona(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, barriov, TextBox5.Text, TextBox6.Text, TextBox7.Text, fecha, sexov, TextBox9.Text)
                    limpiartodo()
                    blanquearcampos()

                Else
                    b = 0
                    blanquearcampos()
                    inicial()
                End If
            Catch ex As Exception
                MsgBox("DNI no encontrado")

            End Try
        End If
        inicial()
        'blanquearcampos()
    End Sub

    Protected Sub bttncancelar_Click(sender As Object, e As System.EventArgs) Handles bttncancelar.Click
        limpiartodo()
        inicial()
    End Sub

    Protected Sub bttneliminar_Click(sender As Object, e As System.EventArgs) Handles bttneliminar.Click
        Me.bttnagregar.Enabled = False
        Me.bttnmodificar.Enabled = False
        Me.TextBox1.Enabled = True
        Me.bttnaceptar.Enabled = True
        Me.bttncancelar.Enabled = True
    End Sub

    Protected Sub bttnmodificar_Click(sender As Object, e As System.EventArgs) Handles bttnmodificar.Click
        Me.bttnagregar.Enabled = False
        Me.bttneliminar.Enabled = False
        activarcampos()
        Me.bttnaceptar.Enabled = True
        Me.bttncancelar.Enabled = True
    End Sub
End Class
